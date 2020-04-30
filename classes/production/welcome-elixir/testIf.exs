# 测试控制语句
# 唯一为假的消息是nil和false
if String.valid?("Hello") do
  IO.inspect("Valid string !")
end

# unless 其他语言没见过，只有否时执行
unless is_integer("hello") do
  IO.inspect("Not an int")
end

# 如果需要匹配多个模式，可以使用case
#_ 变量是 case/ 语句重要的一项，如果没有 _，所有模式都无法匹配的时候会抛出异常：
#_会匹配任何东西
case {:ok, "Hello World"} do
  {:ok, result} -> IO.puts(result)
  {:error} -> IO.puts('Un oh!')
  _ -> IO.puts("Catch all")
end
# 卫兵表达式
f = fn
  x,y when x>0 -> x+y
  x,y->x+y
end
IO.inspect(f.(1,3))
IO.inspect(f.(-1,3))

#匹配条件不是值时可以使用cond，类似于else if
cond do
  2+2 == 5 ->IO.inspect("This is not true")
  2*2 == 5->IO.inspect("This is true")
  true -> IO.inspect("catch err")
end