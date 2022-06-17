defmodule Greeter do
  def for(name, greeting) do
    fn
      ^name -> "#{greeting} #{name}"
      _ -> "I don't know you"
    end
  end
end

mr_hoon = Greeter.for("Hoon", "Hello")

IO.puts(mr_hoon.("Hoon"))
IO.puts(mr_hoon.("Eunbee"))
