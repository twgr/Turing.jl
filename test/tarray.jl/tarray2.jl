# Test TArray

using Turing

function Turing.randclass(urn::PolyaUrn)
  counts = get(current_task(), urn.counts)
  weights = counts ./ sum(counts)
  c = rand(Categorical(weights))
  if c == length(counts)
    urn.counts[length(counts)] = 1
    push!(urn.counts, urn.alpha)
  elseif c < length(counts) && c > 0
    urn.counts[c] = urn.counts[c] + 1
  else
    println(weights)
  end
  return Int(c)::Int
end

function f()
  urn = PolyaUrn(1.72)
  classes = tzeros(Int, 50)
  for i in 1:50
    classes[i]  = randclass(urn)
    u = unique(classes[1:i])
    Base.@assert maximum(u) == length(u)
    # println("[$(current_task())] classes: ", classes[1:i], "; urn:", urn.counts) REVIEW: can we remove this (Kai)
    put!(current_task().storage[:turing_chnl], classes[i])
  end
end

t = Task(f)

take!(t.storage[:turing_chnl]);
a = [copy(t) for i = 1:10];

for i =1:20
  take!(t.storage[:turing_chnl]);
  map((x)->take!(x.storage[:turing_chnl]),a)
end
