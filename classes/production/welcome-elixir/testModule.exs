# 结构体，字典的特殊形式,结构体必须在module中声明

defmodule Example.User do
  defstruct name: "Sean", roles: []
end

# 在脚本文件里，使用struct得这么写
defmodule Main do
  def main do

    #新建一个结构体，很明显就是map,知识多了默认值
    steve = %Example.User{}
    IO.inspect(steve)

    #可以使用类似map的语法更新
    steve = %{steve | name: "hammer"}
    IO.inspect(steve)
    #结构体可以匹配映射
    IO.inspect(%{name: "hammer"} = steve)

    #
  end
end

Main.main()

# 导入函数
#导入List模块的last函数，import可以导入函数和宏
import List,only: [last: 1]
IO.inspect(last([1,2,3,4]))

#require只能导入宏
defmodule MacrosExample do
  #导入之前必须要加载
  require SuperMacros

  SuperMacros.do_stuff
end

