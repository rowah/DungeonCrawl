defmodule DungeonCrawl.Room do
  alias DungeonCrawl.Room
  alias DungeonCrawl.Room.Triggers

  import DungeonCrawl.Room.Action

  defstruct description: nil, actions: [], weight: nil, trigger: nil

  def all,
    do: [
      %Room{
        description:
          "You found a quiet place. Looks safe for a little nap and crawl out of the Dungeon.",
        actions: [rest()],
        weight: 0.5,
        trigger: Triggers.Exit
      },
      %Room{
        description: "You can see the enemy has blocked your path.",
        actions: [forward(), rest(), search()],
        weight: 1,
        trigger: Triggers.Villain
      },
      %Room{
        description: "You can see the enemy has blocked your path.",
        actions: [forward(), rest(), search()],
        weight: 1,
        trigger: Triggers.HiddenVillain
      },
      %Room{
        description: "You are walking cautiously and can see the next room",
        actions: [forward(), rest(), search()],
        weight: 1,
        trigger: Triggers.Treasure
      }
    ]
end
