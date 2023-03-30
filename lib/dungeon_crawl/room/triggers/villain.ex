defmodule DungeonCrawl.Room.Triggers.Villain do
  alias DungeonCrawl.Room.Action
  @behaviour DungeonCrawl.Room.Trigger

  alias Mix.Shell.IO, as: Shell

  def run(character, %Action{id: :forwards}) do
    # takes a random enemy from the list of enemies
    villain = Enum.random(DungeonCrawl.Villains.all())

    Shell.info(villain.description)
    Shell.info("The villain #{villain.name} wants to fight")
    Shell.info("You were prepared and attacked first")

    # invokes DungeonCrawl.Battle.fight/2, passing the hero and the villain
    {updated_char, _villain} = DungeonCrawl.Battle.fight(character, villain)

    # returns the updated character after the battle, and the flag forward indicating the player hasn’t found the exit yet
    {updated_char, :forwards}
  end

  def run(character, %Action{id: :search}) do
    villain = Enum.random(DungeonCrawl.Villains.all())
    damage = 3

    Shell.info(
      "You evade the enemy to search the room to try and boost your health before fighting"
    )

    Shell.info("Your search bears no fruit and the enemy #{villain.name} attacks")
    Shell.info("You waste #{damage} hit points during the search")

    updated_charr = DungeonCrawl.Character.take_damage(character, damage)

    {updated_char, _villain} = DungeonCrawl.Battle.fight(updated_charr, villain)

    {updated_char, :forwards}
  end
end
