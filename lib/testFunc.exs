# 学习函数

#匿名函数
sum = &(&1 + &2)
IO.inspect(sum.(2, 3))

#命名函数
defmodule Greeter do
  def hello(name) do
    "Hello" <> name
  end
  #函数可以缩写
  def hello2(name), do: "Hello2 " <> name
end

IO.inspect(Greeter.hello("Hammer"))
IO.inspect(Greeter.hello2("Hi"))

#命名函数实现递归，其实是尾递归
defmodule Length do
  def of([]), do: 0
  #tail取数组的尾巴，尾部是除去第一个元素剩下的列表
  def of([head | tail]), do: head + of(tail)
end

IO.inspect(Length.of([1, 2, 3, 4]))

#不同于其他语言的函数重载，函数由名字和元素组成，因此可以
defmodule Greeter2 do
  def hello(), do: "Hello, anonymous person!"   # hello/0
  def hello(name), do: "Hello, " <> name        # hello/1,入参是字符串
  def hello(name1, name2), do: "Hello, #{name1} and #{name2}"
  # hello/2
end
IO.inspect(Greeter2.hello())
IO.inspect(Greeter2.hello("1"))
IO.inspect(Greeter2.hello(1, 2))

#m模式匹配函数的入参，比如入参必须包含某个key
defmodule Greeter3 do
  def hello(%{name: pearson_name} = pearson) do
    IO.puts("Hello" <> pearson_name)
    IO.puts(pearson)
  end
end
