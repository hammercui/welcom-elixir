#GenServer是otp的核心
#enserver.handle_call/3处理同步函数
defmodule SimpleQueue do
  use GenServer

  #链接进程
  def start_link(state \\ []) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  def init(state), do: {:ok, state}

  #接受的参数是：请求、调用者的 PID，初始的状态
  def handle_call(:dequeue, _from, [value | state]) do
    {:reply, value, state}
  end

  def handle_call(:dequeue, _from, []), do: {:reply, nil, []}

  def handle_call(:queue, _from, state), do: {:reply, state, state}

  def handle_cast({:enqueue,value},state),do: {:noreply,state ++ [value]}

  #真正的实现
  def queue, do: GenServer.call(__MODULE__, :queue)
  def dequeue, do: GenServer.call(__MODULE__, :dequeue)
  def enqueue(value), do: GenServer.cast(__MODULE__,{:enqueue,value})
end

IO.inspect(SimpleQueue.start_link([1, 2, 3]))

#IO.inspect(SimpleQueue.dequeue())
#
#IO.inspect(SimpleQueue.dequeue())

IO.inspect(SimpleQueue.queue())

#handle_cast处理异步函数，不接受调用者(_from)作为参数,并且没有返回值

IO.inspect(SimpleQueue.enqueue(200))

IO.inspect(SimpleQueue.queue())