defmodule DungeonCrawl.Room.Triggers.Trap do
  alias DungeonCrawl.Room.Action

  @behaviour DungeonCrawl.Room.Trigger

  alias Mix.Shell.IO, as: Shell

  def run(character, %Action{id: :forward}) do
    Shell.info("You're walking cautiously and can see the next room.")
    {character, :forward}
  end

  def run(character, %Action{id: :search}) do
    damage = 3
    Shell.info("You search the room looking for something useful.")
    Shell.info("You step on a false floor and fall into a trap.")
    Shell.info("You are hit by an arrow, losing #{damage} hit points.")

    {
      DungeonCrawl.Character.take_damage(character, damage),
      :forward
    }
  end
end
