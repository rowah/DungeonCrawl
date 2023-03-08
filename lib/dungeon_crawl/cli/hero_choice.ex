defmodule DungeonCrawl.CLI.HeroChoice do
  alias Mix.Shell.IO, as: Shell
  import DungeonCrawl.CLI.BaseCommands

  def start do
    Shell.cmd("clear")
    Shell.info("Start by picking your hero")

    heroes = DungeonCrawl.Heroes.all()
    # find_hero_by_index = &Enum.at(heroes, &1)
    find_hero_by_index = fn index ->
      Enum.at(heroes, index)
    end

    heroes
    # |> Enum.map(fn hero -> hero.name end) # Enum.map(&(&1.name))
    |> display_options()
    |> generate_question()
    |> parse_input()
    |> find_hero_by_index.()
    |> confirm_hero()
  end

  defp confirm_hero(chosen_hero) do
    Shell.cmd("clear")
    Shell.info("You have chosen....\n#{chosen_hero.name}: #{chosen_hero.description}")
    if Shell.yes?("Confirm selection?"), do: chosen_hero, else: start()
  end
end
