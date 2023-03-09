defmodule DungeonCrawl.Room.Trigger do
  # @callback directive tells Elixir we want to define a function rule with two args character and action
  @callback run(character :: any, action :: any) :: any
end
