defmodule Work do
  def add(a, b) do
    IO.puts(a + b)
  end
end

p1 = spawn(Work, :add, [2, 3])
IO.inspect(p1)

defmodule Listener do
  def listen do
    receive do
      {:ok, "hello"} -> IO.puts("World")
    end

    listen()
  end
end

pid = spawn(Listener, :listen, [])

send(pid, {:ok, "hello"})  # will print "World"


defmodule ErrorWork do
  def explode, do: exit(:kaboom)
end

spawn(ErrorWork, :explode, [])

# spawn_link(ErrorWork, :explode, [])


defmodule ErrorWork2 do
  def run do
    Process.flag(:trap_exit, true)
    spawn_link(ErrorWork, :explode, [])

    receive do
      {:EXIT, _from_pid, reason} -> IO.puts("Exit reason: #{reason}")
    end
  end
end

ErrorWork2.run  # Exit reason: kaboom

defmodule ErrorMonitor do
  def run do
    spawn_monitor(ErrorWork, :explode, [])

    receive do
      {:DOWN, _ref, :process, _from_pid, reason} -> IO.puts("[Monitor]Exit reason: #{reason}")
    end
  end
end

ErrorMonitor.run # [Monitor]Exit reason: kaboom


{:ok, agent} = Agent.start_link(fn -> [1, 2, 3] end)

IO.inspect(Agent.get(agent, &(&1)))  # [1, 2, 3]


defmodule SlowTask do
  def double(x) do
    :timer.sleep(2000)
    x * 2
  end
end

task = Task.async(SlowTask, :double, [2000])
IO.inspect("Task started")

IO.inspect(Task.await(task))
