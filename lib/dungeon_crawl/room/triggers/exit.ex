defmodule DungeonCrawl.Room.Triggers.Exit do
  # @behaviour directive tells Elixir the Exit module follows the Room.Trigger contract
  @behaviour DungeonCrawl.Room.Trigger
  def run(character, _), do: {character, :exit}
end
