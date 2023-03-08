defmodule DungeonCrawl.CLI.BaseCommands do
  alias Mix.Shell.IO, as: Shell

  def display_options(options) do
    options
    # adds a zero-based index to each element of a list or enumerable. The 1 argument specifies the starting value of the index
    |> Enum.with_index(1)
    |> Enum.each(fn {option, index} ->
      # Shell.info("#{index} - #{DungeonCrawl.Display.info(option)}")
      Shell.info("#{index} - #{option}")
    end)

    options
  end

  def generate_question(options) do
    options = Enum.join(1..Enum.count(options), ",")
    Shell.prompt("Which one do you pick?[#{options}]\n")
  end

  def parse_input(input) do
    {option, _} = Integer.parse(input)
    option - 1
  end
end
