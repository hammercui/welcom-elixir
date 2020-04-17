defmodule Helloelixir do
  @moduledoc """
  Documentation for `Helloelixir`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Helloelixir.hello("111111")
      :world

  """

  @spec hello(String.t()) :: String.t()
  def hello(name) do 
    "world1"<>name
  end
end