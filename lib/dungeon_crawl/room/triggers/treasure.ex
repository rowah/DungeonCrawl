defmodule DungeonCrawl.Room.Triggers.Treasure do
  alias DungeonCrawl.Room.Action

  @behaviour DungeonCrawl.Room.Trigger
  alias Mix.Shell.IO, as: Shell

  # def run(character, %Action{id: :forward}) do
  #   Shell.info()
  #   {character, :forward}
  # end

  def run(character, %Action{id: :search}) do
    healing = 5
    Shell.info("You search the room looking for something useful")
    Shell.info("You find a treasure box with a healing potion inside")
    Shell.info("You drink the potion and restore #{healing} hit points.")

    {
      DungeonCrawl.Character.heal(character, healing),
      :forward
    }
  end
end
