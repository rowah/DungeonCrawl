defmodule DungeonCrawl.Villains do
  alias DungeonCrawl.Character

  def all,
    do: [
      %Character{
        name: "Darth Vader",
        description:
          "Darth Vader had the potential to become one of the most powerful Jedi ever, and was believed by some to be the prophesied Chosen One who would bring balance to the Force. He was later consumed by the dark side of the force and turned against what the Jedi stood for",
        hit_points: 25,
        max_hit_points: 30,
        damage_range: 7..10,
        attack_description: "a Lightsaber"
      },
      %Character{
        name: "Emperor Palpatine",
        description:
          "Scheming, powerful, and evil to the core, Darth Sidious restored the Sith and destroyed the Jedi Order.",
        hit_points: 20,
        max_hit_points: 20,
        damage_range: 5..10,
        attack_description: "an Lightsaber"
      },
      %Character{
        name: "Darth Maul",
        description:
          "A red black deadly, agile Sith Lord trained by the evil Darth Sidious, Darth Maul was a formidable warrior and scheming mastermind.",
        hit_points: 15,
        max_hit_points: 15,
        damage_range: 2..4,
        attack_description: "an axe lightsaber"
      },
      %Character{
        name: "Count Dooku",
        description: "Count Dooku was a menacing Sith Lord and central figure in the Clone Wars.",
        hit_points: 14,
        max_hit_points: 16,
        damage_range: 2..4,
        attack_description: "an axe"
      },
      %Character{
        name: "General Grievous",
        description:
          "A green evil and brilliant Separatist military strategist and a feared Jedi hunter, known for his ruthlessness and hacking cough.",
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
        damage_range: 2..8,
        attack_description: "an axe"
      },
      %Character{
        name: "Kylo Ren",
        description:
          "A dark warrior strong with the Force, Kylo Ren commands First Order missions with a temper as fiery as his unconventional lightsaber.",
        hit_points: 4,
        max_hit_points: 4,
        damage_range: 1..2,
        attack_description: "a dagger and a lightsaber"
      },
      %Character{
        name: "Supreme Leader Snoke",
        description:
          "A green, ugly and evil creature, the Supreme Leader of the First Order, the mysterious Snoke has no permanent base of operations, preferring to contact his underlings from a mobile command post.",
        hit_points: 20,
        max_hit_points: 25,
        damage_range: 6..14,
        attack_description: "Dark Force Powers"
      }
    ]
end
