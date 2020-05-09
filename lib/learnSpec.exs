# 注解spec 相当于函数的接口，做类型检查时使用
# 复习下怎么定义结构体
defmodule Example.StructDemo do
  defstruct first: 0, last: 10
  # @type t(first,last) :: %Example.StructDemo{first: first, last: last}
  
  @typedoc """
      Type that represents Examples struct with :first as integer and :last as integer.
  """
  @type t :: %Example.StructDemo{first: integer, last: integer}
end

defmodule Example do
  @doc """
  定义入参
  ## Parameters
  - a: is integer
  """
  @spec sum_product(integer) :: integer
  def sum_product(a) do
    [1, 2, 3]
    |> Enum.map(fn el -> el * a end)
    |> Enum.sum()
  end

  @doc """
  定义入参为结构体的方法以及精简的类型的使用
  """
  # @spec sum_times(integer, %Example.StructDemo{first: integer, last: integer}) :: integer
  # @spec sum_times(integer, Example.StructDemo.t(integer, integer)) :: integer
  @spec sum_times(integer, Example.StructDemo.t) :: integer
  def sum_times(a, param) do
    for i <- param.first..param.last do
      i
    end
    |> Enum.map(fn el -> el * a end)
    |> Enum.sum()
    |> round
  end
end


# IO.inspect(Example.sum_product(1))
IO.inspect(Example.sum_times(1, %{first: 1, last: 10}))