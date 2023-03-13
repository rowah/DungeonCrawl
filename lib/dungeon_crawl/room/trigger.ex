defmodule DungeonCrawl.Room.Trigger do
  alias DungeonCrawl.{Character, Room.Action}

  # @callback directive tells Elixir we want to define a function rule with two args character and action
  # any module that obeys this contract must have a function called run that has two arguments of any type, and returns a value of any type
  # associates the types that created
  # In the first argument a character type is expected, and in the second a room action type is expected. The function is expected to return a tuple, where the first item is a character type and the second item is an atom
  @callback run(Character.t(), Action.t()) :: {Character.t(), atom}
end
