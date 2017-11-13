doc"""
    PMMH(n_iters::Int, smc_alg:::SMC, parameters_algs::Tuple{MH})

Particle independant Metropolis–Hastings and
Particle marginal Metropolis–Hastings samplers.

Usage:

```julia
alg = PMMH(100, SMC(20, :v1), MH(1,:v2))
alg = PMMH(100, SMC(20, :v1), MH(1,(:v2, (x) -> Normal(x, 1))))
```
"""
immutable PMMH <: InferenceAlgorithm
  n_iters               ::    Int               # number of iterations
  algs                  ::    Tuple             # Proposals for state & parameters
  space                 ::    Set               # sampling space, emtpy means all
  gid                   ::    Int               # group ID
  PMMH(n_iters::Int, algs::Tuple, space::Set, gid::Int) = new(n_iters, algs, space, gid)
  PMMH(n_iters::Int, smc_alg::SMC, parameter_algs...) = begin
      new(n_iters, tuple(parameter_algs..., smc_alg), Set(), 0)
  end
  PMMH(alg::PMMH, new_gid) = new(alg.n_iters, alg.algs, alg.space, new_gid)
end

PIMH(n_iters::Int, smc_alg::SMC) = PMMH(n_iters, tuple(smc_alg), Set(), 0)

function Sampler(alg::PMMH)
  n_samplers = length(alg.algs)
  samplers = Array{Sampler}(n_samplers)

  space = Set{Symbol}()

  for i in 1:n_samplers[]
    sub_alg = alg.algs[i]
    if isa(sub_alg, Union{SMC, MH})
      samplers[i] = Sampler(typeof(sub_alg)(sub_alg, i))
    else
      error("[PMMH] unsupport base sampling algorithm $alg")
    end
    if typeof(sub_alg) == MH && sub_alg.n_iters != 1
      warn("[PMMH] number of iterations greater than 1 is useless for MH since it is only used for its proposal")
    end
    space = union(space, sub_alg.space)
  end

  # Sanity check for space
  if !isempty(space)
    @assert issubset(Turing._compiler_[:pvars], space) "[PMMH] symbols specified to samplers ($space) doesn't cover the model parameters ($(Turing._compiler_[:pvars]))"

    if Turing._compiler_[:pvars] != space
      warn("[PMMH] extra parameters specified by samplers don't exist in model: $(setdiff(space, Turing._compiler_[:pvars]))")
    end
  end

  info = Dict{Symbol, Any}()
  info[:accept_his] = []
  info[:old_likelihood_estimate] = -Inf # Force to accept first proposal
  info[:old_prior_prob] = 0.0
  info[:samplers] = samplers

  Sampler(alg, info)
end

step(model::Function, spl::Sampler{PMMH}, vi::VarInfo, is_first::Bool) = begin
  violating_support = false
  proposal_ratio = 0.0
  new_prior_prob = 0.0
  new_likelihood_estimate = 0.0
  old_θ = copy(vi[spl])

  dprintln(2, "Propose new parameters from proposals...")
  for local_spl in spl.info[:samplers][1:end-1]
    dprintln(2, "$(typeof(local_spl)) proposing...")
    propose(model, local_spl, vi)
    if local_spl.info[:violating_support] violating_support=true; break end
    new_prior_prob += local_spl.info[:prior_prob]
    proposal_ratio += local_spl.info[:proposal_ratio]
  end

  if !violating_support # do not run SMC if going to refuse anyway
  dprintln(2, "Propose new state with SMC...")
  vi = step(model, spl.info[:samplers][end], vi)
  new_likelihood_estimate = spl.info[:samplers][end].info[:logevidence][end]

  dprintln(2, "computing accept rate α...")
  α = new_likelihood_estimate - spl.info[:old_likelihood_estimate]
  α += new_prior_prob - spl.info[:old_prior_prob] + proposal_ratio
  end

  dprintln(2, "decide whether to accept...")
  if !violating_support && log(rand()) < α # accepted
    push!(spl.info[:accept_his], true)
    spl.info[:old_likelihood_estimate] = new_likelihood_estimate
    spl.info[:old_prior_prob] = new_prior_prob
  else                      # rejected
    push!(spl.info[:accept_his], false)
    vi[spl] = old_θ
  end

  vi
end

sample(model::Function, alg::PMMH;
       save_state=false,         # flag for state saving
       resume_from=nothing,      # chain to continue
       reuse_spl_n=0             # flag for spl re-using
      ) = begin

    spl = Sampler(alg)

    # Number of samples to store
    sample_n = spl.alg.n_iters

    # Init samples
    time_total = zero(Float64)
    samples = Array{Sample}(sample_n)
    weight = 1 / sample_n
    for i = 1:sample_n
        samples[i] = Sample(weight, Dict{Symbol, Any}())
    end

    # Init parameters
    vi = resume_from == nothing ?
              model() :
              resume_from.info[:vi]
    n = spl.alg.n_iters

    # PMMH steps
    if PROGRESS spl.info[:progress] = ProgressMeter.Progress(n, 1, "[PMMH] Sampling...", 0) end
    for i = 1:n
      dprintln(2, "PMMH stepping...")
      time_elapsed = @elapsed vi = step(model, spl, vi, i==1)

      if spl.info[:accept_his][end]     # accepted => store the new predcits
        samples[i].value = Sample(vi).value
      else                              # rejected => store the previous predcits
        samples[i] = samples[i - 1]
      end

      time_total += time_elapsed
      if PROGRESS
        haskey(spl.info, :progress) && ProgressMeter.update!(spl.info[:progress], spl.info[:progress].counter + 1)
      end
    end

    println("[PMMH] Finished with")
    println("  Running time    = $time_total;")
    accept_rate = sum(spl.info[:accept_his]) / n  # calculate the accept rate
    println("  Accept rate         = $accept_rate;")

    if resume_from != nothing   # concat samples
      unshift!(samples, resume_from.value2...)
    end
    c = Chain(0, samples)       # wrap the result by Chain

    if save_state               # save state
      save!(c, spl, model, vi)
    end

    c
end
