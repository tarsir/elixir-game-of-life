defmodule GameOfLifeWorldTest do
  use ExUnit.Case
  doctest GameOfLife

  setup do
    {:ok, test_world} = GameOfLife.game_of_life(100)
  end

  test "initialize world builds a world", context do
    assert false
  end
end
