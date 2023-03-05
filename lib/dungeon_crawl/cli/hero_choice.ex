defmodule DungeonCrawl.CLI.HeroChoice do
  alias Mix.Shell.IO, as: Shell

  def start do
    Shell.cmd("clear")
    Shell.info("Start by picking your hero")

    heroes = DungeonCrawl.Heroes.all()

    heroes
    |> Enum.map(fn user -> user.name end)
    |> display_options
  end

  def display_options(options) do
    options
    # adds a zero-based index to each element of a list or enumerable. The 1 argument specifies the starting value of the index
    |> Enum.with_index(1)
    |> Enum.each(fn {option, index} ->
      Shell.info("#{index} - #{option}")
    end)

    options
  end
end
