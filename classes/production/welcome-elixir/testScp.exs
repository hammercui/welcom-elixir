#打印

a = 2+3
IO.puts(a)
#显示detail
IO.inspect("test")

#原子类型
a = :foo
IO.puts(a)
# boolean也是原子类型
IO.puts(is_atom(a))
# 引用erlang标准款的模块

b = :crypto.strong_rand_bytes 3

#除法
IO.puts(div(10,3))
#求余数
IO.puts(rem(10,3))

#字符串插值
name = "hammer"
IO.puts("Hello #{name}")