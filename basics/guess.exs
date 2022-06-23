# DB.find_customers
# |> Orders.for_customers
# |> sales_tax(2018)
# |> prepare_filing

defmodule Example do
  def func1 do
    List.flatten([1, [2, 3], 4])
  end

  def func2 do
    import List, only: [flatten: 1]
    flatten([5, [6, 7], 8])
  end
end

alias My.Other.Module.Parser, as: Parser
alias My.Other.Module.Runner, as: Runner
# or
alias My.Other.Module.Parser
alias My.Other.Module.Runner
# or
alias My.Other.Module.{Parser, Runner}

defmodule Example do
  @author "Hoon Wee"
  def get_author do
    @author
  end
end

IO.puts("Example was written by #{Example.get_author()}")
