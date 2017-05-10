# Conway's Game of Life

This is an Elixir implementation of Conway's game of life, purely done as an exercise for
Elixir practice.

## Basic Usage

Supposing you load the app with `iex -S mix`:

```
iex> world = GameOfLife.game_of_life(10) # generates a new world and does 10 steps of the simulation
iex> GameOfLife.World.print_world world # displays the world in a slightly easier to read format
iex> world_2 = GameOfLife.simulate_iterations(1, world) # performs one step of the simulation on 'world'
```

## Files of interest

`game_of_life.ex`

This is the entry point to the simulation. You can either let `game_of_life\1` generate a random world
to use as your initial seed, or you can construct your own (it's a simple 2D array of integers, 0 for
dead cells and 1 for live cells) and pass a number of iterations and the world into `simulate_iterations\2`.

`simulate.ex`

Here's all the logic for proceeding in the simulation, along with a LOT of helper methods for determining
each cell's procession. 

`world.ex`

This has functions for creating and printing worlds.

