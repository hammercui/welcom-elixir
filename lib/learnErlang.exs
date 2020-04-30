# 使用erlang的标准库

#1 计算某函数的执行时间

defmodule Example do
  def timed(fun, args) do
    {time, result} = :timer.tc(fun, args)
    IO.puts("Time: #{time} μs")
    IO.puts("Result: #{result}")
  end

  def sum(n) when n > 0, do: n + sum(n - 1)
  def sum(n) when n <= 0, do: 0
end

a = fn n when n > 0 -> n + Example.sum(n - 1)   end

#b = fn n when n > 0 -> n + a(n - 1)   end


Example.timed(a, [100000000])