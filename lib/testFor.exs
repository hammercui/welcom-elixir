#推导
#for关键字，可用于Enum和Stream

#遍历列表
a = [1, 2, 3, 4, 5]
IO.inspect(for x <- a, do: x * x)
#类似于
IO.inspect(Enum.map(a, &(&1 * &1)))

#遍历关键字列表
b = for {_key, val} <- [one: 1, two: 2, three: 3], do: val
IO.inspect(b)

#遍历map
c = for {k, v} <- %{"a" => "A", "b" => "B"}, do: {k, v}
IO.inspect(c)


#多个生成器，实现类似嵌套的效果
d = for n <- a, times <- 1..n do
  #  String.duplicate("*",times)
  IO.puts "#{n} - #{times}"
end
IO.inspect(d)

#过滤器，类似于哨兵
import Integer
e = for x <- 1..10, is_even(x), do: x
IO.inspect(e)

#使用:into
d = [one: 1, two: 2, three: 3]
d = for {_, v} <- d, into: [], do: v
IO.inspect(d)

# 更新list实验
a = [1, 2, 3, 4, 5]
a1 = Enum.at(a, 1)
IO.inspect(a)
IO.inspect(a1)
IO.inspect(List.replace_at(a, 1, 200))
IO.inspect(a)
# 测试排序
IO.inspect(Enum.sort(a, fn (x,y) -> x > y  end))
