defmodule Chain do
  def counter(next_pid) do
    receive do
      # it will receive an integer n and send it back incremented by 1
      n -> send(next_pid, n + 1)
    end
  end

  def create_processes(n) do
    code_to_run = fn _, send_to ->
      spawn(Chain, :counter, [send_to])
    end

    # self() is current process id
    # it will pass the latest pid for every iteration
    # so the last process' id will be stored in `last`
    # this creates n-processes that's ready to do `Chain.counter`
    last = Enum.reduce(1..n, self(), code_to_run)
    # Processes are ready. Let's fire by sending 0
    send(last, 0)

    receive do
      final_answer when is_integer(final_answer) ->
        "Result is #{inspect(final_answer)}"
    end
  end

  @doc """
  Run this with `elixir --erl "+P 1000000" -r chain.exs -e "Chain.run(1000000)"`
  """
  def run(n) do
    # :timer.tc is an Erlang native method that measures
    # the elapsed time of given function
    :timer.tc(Chain, :create_processes, [n])
    |> IO.inspect()
  end
end
