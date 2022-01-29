defmodule SolTesteTest do
  use ExUnit.Case
  doctest SolTeste

  test "greets the world" do
    assert SolTeste.hello() == :world
  end
end
