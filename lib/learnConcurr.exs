# 学习并发concurrency
#并发模型是actors,区别于golang的csp模型
defmodule Example do
  def add(a, b) do
    IO.puts(a + b)
  end
  def addS(a, b) do
    :timer.sleep(500)
    IO.puts(a + b)
  end
end

Example.add(2, 3)
#异步执行，类似于golang的go func
spawn(Example, :addS, [3, 3])
Example.add(4, 3)

#进程之间依靠消息传递，进程可以处于阻塞状态，类似于golang的chan,但是没有缓存
#send/2,receive为收发，类似于chan的chan<- int,v, ok := <-ch
defmodule Example2 do
  def listen do
    receive do
      {:ok, "hello"} -> IO.inspect("World")
    end

    listen()
  end
end
#启动协程
pid = spawn(Example2, :listen, [])
#给actor发消息
send pid, {:ok, "hello"}
send pid, :ok

#Task 提供了一种方式在后台执行一个函数，并且可以后面再获取它的返回值。
#task不阻塞当前进程
defmodule Example3 do
  def double(x) do
    :timer.sleep(100)
    x * 2
  end
end

#这里提供了一种可能，使用同步来写异步
task = Task.async(Example3, :double, [2000])
IO.inspect(Task.await(task,200))
IO.inspect("task await end")

