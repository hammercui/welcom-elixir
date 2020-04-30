defmodule HelloelixirTest do
  use ExUnit.Case
  doctest Helloelixir

  test "greets the world" do
    assert Helloelixir.hello() == :world
  end
end
