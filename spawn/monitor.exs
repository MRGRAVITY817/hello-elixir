defmodule Monitor do
  import :timer, only: [sleep: 1]

  def sleepy_function do
    sleep(500)
    exit(:boom)
  end

  def run do
    # `spawn_monitor` will not exit the current process
    # it will just report the spawned process has exited
    res = spawn_monitor(Monitor, :sleepy_function, [])
    IO.puts(inspect(res))

    receive do
      msg ->
        IO.puts("Message arrived: #{inspect(msg)}")
    after
      1000 ->
        IO.puts("Nothing happened as far as I am concerned")
    end
  end
end

Monitor.run()
