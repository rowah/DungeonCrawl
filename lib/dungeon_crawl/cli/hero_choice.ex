defmodule DungeonCrawl.CLI.HeroChoice do
  alias Mix.Shell.IO, as: Shell

  def start do
    Shell.cmd("clear")
    Shell.info("Start by picking your hero")

    heroes = DungeonCrawl.Heroes.all()
    # find_hero_by_index = &Enum.at(heroes, &1)
    find_hero_by_index = fn index ->
      Enum.at(heroes, index)
    end

    heroes
    # Enum.map(&(&1.name))
    |> Enum.map(fn hero -> hero.name end)
    |> display_options()
    |> generate_question()
    |> parse_input()
    |> find_hero_by_index.()
    |> confirm_hero()
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

  defp generate_question(options) do
    options = Enum.join(1..Enum.count(options), ",")
    Shell.prompt("Which hero do you pick?[#{options}]\n")
  end

  defp parse_input(input) do
    {option, _} = Integer.parse(input)
    option - 1
  end

  defp confirm_hero(chosen_hero) do
    Shell.cmd("clear")
    Shell.info("You have chosen....\n#{chosen_hero.name}: #{chosen_hero.description}")
    if Shell.yes?("Confirm selection?"), do: chosen_hero, else: start()
  end
end
