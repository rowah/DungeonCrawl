defmodule DungeonCrawl.Villains do
  alias DungeonCrawl.Character

  def all,
    do: [
      %Character{
        name: "Darth Vader",
        description: "A large creature. Big muscles. Angry and hungry.",
        hit_points: 25,
        max_hit_points: 28,
        damage_range: 7..13,
        attack_description: "a hammer"
      },
      %Character{
        name: "Emperor Palpatine",
        description: "A green evil creature. Wears armor and an axe.",
        hit_points: 20,
        max_hit_points: 20,
        damage_range: 1..10,
        attack_description: "an axe"
      },
      %Character{
        name: "Darth Maul",
        description: "A green evil creature. Wears armor and an axe.",
        hit_points: 15,
        max_hit_points: 15,
        damage_range: 2..4,
        attack_description: "an axe"
      },
      %Character{
        name: "Count Dooku",
        description: "A green evil creature. Wears armor and an axe.",
        hit_points: 14,
        max_hit_points: 16,
        damage_range: 2..4,
        attack_description: "an axe"
      },
      %Character{
        name: "General Grievous",
        description: "A green evil creature. Wears armor and an axe.",
        hit_points: 8,
        max_hit_points: 8,
        damage_range: 2..4,
        attack_description: "an axe"
      },
      %Character{
        name: "Asajj Ventress",
        description: "A green evil creature. Wears armor and an axe.",
        hit_points: 8,
        max_hit_points: 8,
        damage_range: 2..4,
        attack_description: "an axe"
      },
      %Character{
        name: "Kylo Ren",
        description: "A small green creature. Wears dirty clothes and a dagger.",
        hit_points: 4,
        max_hit_points: 4,
        damage_range: 1..2,
        attack_description: "a dagger"
      },
      %Character{
        name: "Supreme Leader Snoke",
        description: "A green evil creature. Wears armor and an axe.",
        hit_points: 20,
        max_hit_points: 25,
        damage_range: 6..14,
        attack_description: "Dark Force Powers"
      }
    ]
end
