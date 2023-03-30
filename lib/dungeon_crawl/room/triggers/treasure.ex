defmodule DungeonCrawl.Room.Triggers.Treasure do
  alias DungeonCrawl.Room.Action

  @behaviour DungeonCrawl.Room.Trigger
  alias Mix.Shell.IO, as: Shell

  def run(character, %Action{id: :forward}) do
    Shell.info(
      "You have decided not to look for any useful treasure that mya contain healing points to boost your health"
    )

    {character, :forward}
  end

  def run(character, %Action{id: :search}) do
    healing = 8
    Shell.info("You search the room looking for something useful")
    Shell.info("You find a treasure box with a healing potion inside")
    Shell.info("You drink the potion and restore #{healing} hit points.")

    {
      DungeonCrawl.Character.heal(character, healing),
      :forward
    }
  end

  def run(character, %Action{id: :rest}) do
    healing = 5
    Shell.info("You notice that this is a safe room and decide to take a rest")

    Shell.info(
      "While resting, you fall asleep and wake up to a treasure on your hands that can add you #{healing} hit points"
    )

    {
      DungeonCrawl.Character.heal(character, healing),
      :forward
    }
  end
end
