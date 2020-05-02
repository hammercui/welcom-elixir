#学习管道操作符
#|>把前一个表达式的结果作为第一个参数，传递给后一个表达式

a = "Elixir is very ley col" |> String.split()

IO.inspect(a)

#当多于1个参数时，必须使用（）
b = "elixir" |> String.ends_with?("r")
IO.inspect(b)

#数组反转
a = [1,2,3,4,5,6]
#IO.inspect(Enum.reverse(a))

#自定义实现数组反转
defmodule My do
  def reverse([]), do: []
#  def reverse(), do: [reverse(tail),head]
  def reverse(enumerable), do: Enum.reduce(enumerable, [], fn (x,acc)-> [x | acc] end)
#   def reverse([head | tail]),do: [reverse(tail),head]
end

IO.inspect(My.reverse(a))
#获得指定下标的值
IO.inspect(Enum.at(a,1))

#尾递归优化后的数组反转
b = [1,2,3,4,5,6]
defmodule My2 do
  def reverse([],wei),do: wei
  def reverse([head|tail],wei),do: reverse(tail,[head|wei])
end
IO.inspect(b)
IO.inspect(My2.reverse(b,[]))

#for times <- 1..1000000 do
#  IO.inspect(My2.reverse(b,[]))
#end