defmodule DungeonCrawl.Heroes do
  alias DungeonCrawl.Character

  def all,
    do: [
      %Character{
        name: "R2-D2",
        description: "R2-D2 has strong defense and consistent damage.",
        hit_points: 8,
        max_hit_points: 10,
        damage_range: 1..3,
        attack_description: "a sword"
      },
      %Character{
        name: "C-3PO",
        description: "C-3PO has strong defense and consistent damage.",
        hit_points: 10,
        max_hit_points: 10,
        damage_range: 1..3,
        attack_description: "a sword"
      },
      %Character{
        name: "Luke Skywalker",
        description: "Luke Skywalker has strong defense and consistent damage.",
        hit_points: 25,
        max_hit_points: 25,
        damage_range: 1..12,
        attack_description: "a sword"
      },
      %Character{
        name: "Anakin Skywalker",
        description: "Anakin has both high variability of attack damage and strong health.",
        hit_points: 20,
        max_hit_points: 20,
        damage_range: 1..10,
        attack_description: "a lightsaber"
      },
      %Character{
        name: "Obi-Wan",
        description: "Ben Kenobi has strong attack, but low health.",
        hit_points: 25,
        max_hit_points: 28,
        damage_range: 6..15,
        attack_description: "a fireball"
      },
      %Character{
        name: "Lando Calrissian",
        description: "Lando Calrissian has high variability of attack damage.",
        hit_points: 10,
        max_hit_points: 10,
        damage_range: 1..4,
        attack_description: "a dagger"
      },
      %Character{
        name: "Princess Leia Organa",
        description: "Princess Leia has high variability of attack damage.",
        hit_points: 12,
        max_hit_points: 20,
        damage_range: 1..12,
        attack_description: "a dagger"
      },
      %Character{
        name: "Han Solo",
        description: "Captain Solo has both high variability of attack damage and strong health.",
        hit_points: 15,
        max_hit_points: 15,
        damage_range: 1..5,
        attack_description: "a machine gun"
      },
      %Character{
        name: "Chewbacca",
        description: "Chewbacca has high variability of attack damage.",
        hit_points: 12,
        max_hit_points: 15,
        damage_range: 1..5,
        attack_description: "a gun"
      },
      %Character{
        name: "Master Yoda",
        description: "Master Yoda has high variability of attack damage.",
        hit_points: 30,
        max_hit_points: 30,
        damage_range: 7..15,
        attack_description: "a lightsaber dagger"
      }
    ]
end
