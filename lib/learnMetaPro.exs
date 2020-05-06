# 元编程 meta program
# quote函数转换代码为底层表示形式

IO.inspect(quote do: 1 + 2)

# Unquote 在ast插入新的代码和值
denominator = 2
IO.inspect(quote do: divide(42, denominator))

IO.inspect(quote do: divide(42, unquote(denominator)))

defmodule OurMacro do
  defmacro unless(expr, do: block) do
    quote do
      if !unquote(expr), do: unquote(block)
    end
  end
end

#If the module is defined at the top-level and you are trying to use it at the top-level, this is not supported by Elixir
#不支持在顶级直接使用，在顶级的module
defmodule OurTest do
  require OurMacro
  IO.inspect(OurMacro.unless true, do: "Hi")
  IO.inspect(OurMacro.unless false, do: "Hi")

  # 把宏生成的代码给展开
  quoted =
   quote do
     OurMacro.unless(true , do: "expand")
   end

   quoted
   |> Macro.expand_once(__ENV__)
   |> Macro.to_string()
   |> IO.puts()
end

#学习绑定bind_quoted ，使用变量绑定，能在宏中多次使用变量，并只被计算一次

defmodule Example do
  defmacro double_puts(expr) do
    quote bind_quoted: [expr: expr] do
      IO.puts(expr)
      IO.puts(expr)
    end
  end
end

defmodule OutTest2 do
  require Example
  IO.puts(Example.double_puts(:os.system_time))
end

