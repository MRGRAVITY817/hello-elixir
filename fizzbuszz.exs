fizzbuzz = fn
  0, 0, _ -> "Fizzbuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, a -> a
end

IO.puts(fizzbuzz.(0, 0, 1))
IO.puts(fizzbuzz.(0, 1, 1))
IO.puts(fizzbuzz.(1, 0, 1))
IO.puts(fizzbuzz.(1, 1, 1))

fb_rem = fn n -> fizzbuzz.(rem(n, 3), rem(n, 5), n) end

IO.puts(fb_rem.(10))
IO.puts(fb_rem.(11))
IO.puts(fb_rem.(12))
IO.puts(fb_rem.(13))
IO.puts(fb_rem.(14))
IO.puts(fb_rem.(15))
IO.puts(fb_rem.(16))
