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

#tuple类似于array，在内容中连续存储
