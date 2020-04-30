# 字符串的使用
IO.inspect(<<104,101,108,108,111>>)

#字符串字素的数量
IO.inspect(String.length("Hello"))
#字素（Graphemes）无关中英文,字素就是一个字符的表示，通常由多个字码点（Codepoint）表示
#中文1字符=3字节
IO.inspect(String.length("崔里"))

#替换字符
IO.inspect(String.replace("Hello","e","a"))

#测试 a b 两个字符串重组之后是否相等
defmodule Example do
  def is_equal?(a,b) when is_binary(a) and is_binary(b) do
    sort_string(a) == sort_string(b)
  end

  def sort_string(string) do
    string
    |> String.downcase()
    |> String.graphemes()
    |> Enum.sort()
  end
end
a = "super"
b = "perus"
IO.inspect(Example.sort_string(a))
IO.inspect(Example.sort_string(b))
IO.inspect(Example.is_equal?(a,b))