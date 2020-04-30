# 魔符

#~c处理差值和转义字符
IO.inspect(~c/2+7 = #{2+7}/)

#正则表达式
re = ~r/elixir/
IO.inspect("Elixir" =~ re)