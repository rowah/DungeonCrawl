defmodule DungeonCrawl.Heroes do
  alias DungeonCrawl.Character

  def all,
    do: [
      %Character{
        name: "Luke Skywalker",
        description: "Luke Skywalker has strong defense and consistent damage.",
        hit_points: 18,
        max_hit_points: 18,
        damage_range: 4..5,
        attack_description: "a sword"
      },
      %Character{
        name: "Darth Vader",
        description: "Darth Vader has both high variability of attack damage and strong health.",
        hit_points: 12,
        max_hit_points: 12,
        damage_range: 1..12,
        attack_description: "a lightsaber"
      },
      %Character{
        name: "Wizard",
        description: "Wizard has strong attack, but low health.",
        hit_points: 8,
        max_hit_points: 8,
        damage_range: 6..10,
        attack_description: "a fireball"
      },
      %Character{
        name: "Master Yoda",
        description: "Master Yoda has high variability of attack damage.",
        hit_points: 12,
        max_hit_points: 20,
        damage_range: 1..12,
        attack_description: "a dagger"
      }
    ]
end
