prefix = fn pref -> fn name -> "#{pref} #{name}" end end

IO.puts(prefix.("Harry").("Potter"))

list = [1, 2, 3, 4]
IO.puts(Enum.map(list, fn elem -> elem * 2 end))
