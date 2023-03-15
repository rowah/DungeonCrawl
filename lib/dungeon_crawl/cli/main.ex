defmodule DungeonCrawl.CLI.Main do
  alias Mix.Shell.IO, as: Shell

  def start_game do
    welcome_message()
    Shell.prompt("Press enter to continue")

    # the crawl function must have a hero in the parameter because it will be helpful to update the hero’s health based on actions triggered in the room
    crawl(hero_choice(), DungeonCrawl.Room.all())
  end

  defp hero_choice do
    hero = DungeonCrawl.CLI.HeroChoice.start()
    # changes the chosen hero name to you
    %{hero | name: "You"}
  end

  # ends the game when the character reaches zero hit points.
  defp crawl(%{hit_points: 0}, _) do
    Shell.prompt("")
    Shell.cmd("clear")
    Shell.info("Unfortunately your wounds are too many to keep walking.")
    Shell.info("You fall onto the floor without strength to carry on.")
    Shell.info("Game over!")
    Shell.prompt("")
  end

  defp crawl(character, rooms) do
    Shell.info("You keep moving forward to the next room")
    Shell.prompt("Press enter to continue")
    Shell.cmd("clear")

    # displays user's current stats
    Shell.info(DungeonCrawl.Character.current_stats(character))

    rooms
    |> Enum.random()
    |> DungeonCrawl.CLI.RoomActionsChoice.start()
    |> trigger_action(character)
    |> handle_action_result
  end

  defp welcome_message do
    Shell.info("== Dungeon Crawl ==")
    Shell.info("You awake in a dungeon full of monsters")
    Shell.info("You need to survive and find the exit")
  end

  defp trigger_action({room, action}, character) do
    Shell.cmd("clear")
    room.trigger.run(character, action)
  end

  defp handle_action_result({_, :exit}),
    do: Shell.info("You found the exit. You won the game. Congratulations!")

  defp handle_action_result({character, _}), do: crawl(character, DungeonCrawl.Room.all())
end
