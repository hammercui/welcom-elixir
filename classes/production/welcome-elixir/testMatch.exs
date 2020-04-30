# 测试 模式匹配
#{:ok, value} = {:error}

# pin操作符，用已绑定的值去匹配，而不是重新绑定一个值

x = 1
#^x = 2
IO.inspect({x,^x} = {2,1})
#Elixir 1.2 开始支持对映射（Map）中的键（Key）以及匹配函数子句（function clause）：

key = "hello"
IO.inspect(%{^key=>value}=%{"hello"=>"world"})
IO.inspect(value)


#下面演示函数中的模式匹配，以及真正的函数式闭包
greeting = "Hello"
greet = fn
  (^greeting,name)-> "Hi #{name}"
  (greeting,name)->"#{greeting},#{name}}}"
end
IO.inspect(greet.("Hello","模式匹配1"))
IO.inspect(greet.("Hammer2","模式匹配2"))
IO.inspect(greeting)

