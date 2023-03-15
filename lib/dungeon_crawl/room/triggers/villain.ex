defmodule DungeonCrawl.Room.Triggers.Villain do
  @behaviour DungeonCrawl.Room.Trigger

  alias Mix.Shell.IO, as: Shell

  def run(character, %DungeonCrawl.Room.Action{id: :forwards}) do
    # takes a random enemy from the list of enemies
    villain = Enum.random(DungeonCrawl.Villains.all())

    Shell.info(villain.description)
    Shell.info("The villain #{villain.name} wants to fight")
    Shell.info("You were prepared and attacked first")

    # invokes DungeonCrawl.Battle.fight/2, passing the hero and the villain
    {updated_char, _enemy} = DungeonCrawl.Battle.fight(character, villain)

    # returns the updated character after the battle, and the flag forward indicating the player hasn’t found the exit yet
    {updated_char, :forward}
  end
end
