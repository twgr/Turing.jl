# Test task copying

using Turing

# Test case 1: stack allocated objects are deep copied.
function f_ct()
  t = 0;
  while true
    put!(current_task().storage[:turing_chnl], t)
    t = 1 + t
  end
end

t = Task(f_ct); t.storage = ObjectIdDict();
t.storage[:turing_chnl] = Channel(0);
schedule(t)


take!(t.storage[:turing_chnl]); take!(t.storage[:turing_chnl])
a = copy(t);
take!(a.storage[:turing_chnl]); take!(a.storage[:turing_chnl])

# Test case 2: heap allocated objects are shallowly copied.

function f_ct2()
  t = [0 1 2];
  while true
    #println(pointer_from_objref(t)); REVIEW: can we remove this comments (Kai)
    put!(current_task().storage[:turing_chnl], t[1])
    t[1] = 1 + t[1]
  end
end

t = Task(f_ct2)

take!(t.storage[:turing_chnl]); take!(t.storage[:turing_chnl])
a = copy(t);
take!(a.storage[:turing_chnl]); take!(a.storage[:turing_chnl])

# REVIEW: comments below need to be updated (Kai)
# more: add code in copy() to handle invalid cases for cloning tasks.

function f_ct3()
  t = [0];
  o = (x) -> x + 1;  # not heap allocated?
  while true
    put!(current_task().storage[:turing_chnl], t[1])
    t[1] = 1 + t[1]
  end
  return o
end

t = Task(f_ct3)

take!(t.storage[:turing_chnl]); take!(t.storage[:turing_chnl]);
a = copy(t);
take!(a.storage[:turing_chnl]); take!(a.storage[:turing_chnl])
