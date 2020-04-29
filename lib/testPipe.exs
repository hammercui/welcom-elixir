#学习管道操作符
#|>把前一个表达式的结果作为第一个参数，传递给后一个表达式

a = "Elixir is very ley col" |> String.split()

IO.inspect(a)

#当多于1个参数时，必须使用（）
b = "elixir" |> String.ends_with?("r")

IO.inspect(b)