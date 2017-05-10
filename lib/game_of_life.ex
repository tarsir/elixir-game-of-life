defmodule GameOfLife do
  @moduledoc """
  An Elixir implementation of Conway's game of life.
  """

  alias GameOfLife.World
  alias GameOfLife.Simulate

  @doc """
  Simulates the game of life for :iterations
  """
  def game_of_life(iterations) do
    with {:ok, new_world} <- World.generate_world(10),
      do: simulate_iterations(iterations, new_world)
  end

  def simulate_iterations(iterations, world) when iterations <= 1 do
    GameOfLife.Simulate.simulate(world)
  end

  def simulate_iterations(iterations, world) do
    new_world = GameOfLife.Simulate.simulate(world)
    simulate_iterations(iterations - 1, new_world)
  end
end
