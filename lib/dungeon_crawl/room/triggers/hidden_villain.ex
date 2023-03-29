defmodule DungeonCrawl.Room.Triggers.HiddenVillain do
  alias DungeonCrawl.Room.Action

  @behaviour DungeonCrawl.Room.Trigger

  alias Mix.Shell.IO, as: Shell

  def run(character, %Action{id: :forwards}) do
    Shell.info("You have spotted the next available room and are walking cautiously toward it")
    {character, :search}
  end

  def run(character, %Action{id: :search}) do
    villain = Enum.random(DungeonCrawl.Villains.all())
    Shell.info("You have found a quiet place and decide to take a rest")
    Shell.info(villain.description)

    Shell.info(
      "Suddenly a villain #{villain} appears out of nowhere and gives you a surprise attack"
    )

    {_villain, updated_char} = DungeonCrawl.Battle.fight(villain, character)

    {updated_char, :forward}
  end
end
