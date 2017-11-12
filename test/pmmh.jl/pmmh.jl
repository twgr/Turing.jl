include("../utility.jl")

using Distributions
using Turing
using Base.Test
srand(125)

x = [1.5 2.0]

@model pmmhtest(x) = begin
  s ~ InverseGamma(2,3)
  m ~ Normal(0,sqrt(s))
  for i in 1:length(x)
    x[i] ~ Normal(m, sqrt(s))
  end
  s, m
end

# PMMH with Gaussian proposal
GaussianKernel(var) = (x) -> Normal(x, sqrt(var))
check_numerical(
  sample(pmmhtest(x), PMMH(100, SMC(30, :m), MH(1,(:s, GaussianKernel(1))))),
  [:s, :m], [49/24, 7/6]
)

# PMMH with prior as proposal
check_numerical(
  sample(pmmhtest(x), PMMH(100, SMC(30, :m), MH(1,:s))),
  [:s, :m], [49/24, 7/6]
)

# PIMH
check_numerical(
  sample(pmmhtest(x), PIMH(100, SMC(30))),
  [:s, :m], [49/24, 7/6]
)
