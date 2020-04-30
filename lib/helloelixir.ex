defmodule Hello do
  @moduledoc """
  Documentation for `Hello`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Hello.hello(")
      :world

  """

  @spec say() :: String.t()
  def say() do
   IO.inspect "world1 Elixir!"
  end
end