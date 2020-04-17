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
