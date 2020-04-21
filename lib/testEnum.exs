# 学习enum模块
#Enum.__info__(:functions)
#|> Enum.each(
#     fn({function, arity}) ->
#       IO.puts "#{function}/#{arity}"
#     end)

#all?遍历，函数所有返回true时，返回true
ret = Enum.all?(["aaa","bbb"],fn(s)->String.length(s) == 3 end)
IO.puts(ret)
IO.puts(ret)
#返回集合中最大的值
IO.inspect(Enum.max([1.3,4,5,10]))
#fliter过滤，返回需要的元素
a = Enum.filter([1,2,2,3,4,5],fn(x)->rem(x,2) == 0 end)
IO.inspect(a)
# reduce/3 集合不断计算，得到一个值

a = Enum.reduce([1,2,3],10,fn(x,acc)-> x+ acc end)
IO.inspect(a)
