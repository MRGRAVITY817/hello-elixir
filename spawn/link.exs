defmodule Link do
  import :timer, only: [sleep: 1]

  def sad_function do
    sleep(50)
    exit(:boom)
  end

  def run do
    # this will "trap the exit", which means it will get the exit message from the process
    # or else it will just exit
    Process.flag(:trap_exit, true)

    # we cannot know what happened to spawned process only with `spawn`
    # When we use `spawn_link`, it links the spawnee and spawner.
    # Hence when the spawnee gets killed, the spawner also gets killed.
    spawn_link(Link, :sad_function, [])

    receive do
      msg ->
        IO.puts("Message arrived: #{inspect(msg)}")
    after
      1000 ->
        IO.puts("Nothing happened as far as I am concerned")
    end
  end
end

Link.run()
