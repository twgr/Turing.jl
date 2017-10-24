# Test TArry

using Turing

function f_cta()
  t = TArray(Int, 1);
  t[1] = 0;
  while true
    put!(current_task().storage[:turing_chnl], t[1])
    t[1]
    t[1] = 1 + t[1]
  end
end

t = Task(f_cta)

take!(t.storage[:turing_chnl]); take!(t.storage[:turing_chnl])
a = copy(t);
take!(a.storage[:turing_chnl]); take!(a.storage[:turing_chnl])

Base.@assert take!(t.storage[:turing_chnl]) == 2
Base.@assert take!(a.storage[:turing_chnl]) == 4

# Base.@assert TArray(Float64,  5)[1] != 0 REVIEW: can we remove this? (Kai)
Base.@assert tzeros(Float64, 5)[1]==0
Base.@assert tzeros(4)[1]==0
