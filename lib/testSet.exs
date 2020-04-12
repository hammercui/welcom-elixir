# 集合 包含list,tuple,关键字列表（keyword list） 映射(map)

#list本质是链表，时间复杂度O(n)
#list拼接
IO.inspect([1,2]++[3,4])

#取list的头部
a = [3.14, :pie, "Apple"]
IO.inspect(hd(a))
#列表的头部是列表的第一个元素；尾部是除去第一个元素剩下的列表。
[head|tail] = a
IO.inspect("head #{head}")
IO.inspect(tail)

#tuple类似于array，在内容中连续存储,修改值操作昂贵，需要深拷贝
#因此只作为返回值使用，用{}表示
IO.inspect({1,2,3})

#关键字列表
#映射map,键值对的第一选择，任意值可以为key,
map = %{:foo=>'bar',"hello"=>:world}
IO.inspect(map)
#更新map一个已存在key的值得
map = %{map | :foo=>'bar2'}
IO.inspect(map)
#创造一个新键值对
map = Map.put(map,:fo2,"fo2")
IO.inspect(map)
IO.inspect(map[:fo2])
# 判断map是否存在key
{ a,b} = Map.fetch(map, :fo2)
IO.puts(a)
IO.puts(Map.has_key?(map,:fo2))