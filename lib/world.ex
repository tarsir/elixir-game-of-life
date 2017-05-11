defmodule GameOfLife.World do
    @moduledoc """
    Logic for generating and populating the world at initialization.
    """

    @doc """
    Generates a list of 0 with length :number

    ## Examples

        iex> GameOfLife.World.generate_random_row(10) |> Enum.count
        10
    """
    def generate_random_row (number) do
        for n <- 1..number do
            if :rand.uniform >= 0.7 do
                1
            else
                0
            end
        end
    end

    @doc """
    Generates an empty world of size :size

    ## Examples

        iex> GameOfLife.World.generate_world(4) |> Enum.count
        4

    """
    def generate_world(size) do
        for n <- 1..size do
            generate_random_row(size)
        end
    end

    def print_world(world) do
        Enum.map(world, fn(x) -> Enum.join(x, ", ") end) 
            |> Enum.map(fn(x) -> IO.puts(x) end)
    end
end