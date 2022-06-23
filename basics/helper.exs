# add_one = fn n -> n + 1 end
add_one = &(&1 + 1)
IO.puts(add_one.(44))

square = &(&1 * &1)
IO.puts(square.(2))

# this will refer the existing Float.round, cause the order of the param is same
rnd = &Float.round(&1, &2)
# rnd = &Float.round(&2, &1) is not good
