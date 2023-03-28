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
        attack_description: "Scomp Link Computer Interface"
      },
      %Character{
        name: "C-3PO",
        description: "C-3PO has strong defense and consistent damage.",
        hit_points: 10,
        max_hit_points: 10,
        damage_range: 4..5,
        attack_description: "a sword"
      },
      %Character{
        name: "Luke Skywalker",
        description:
          "Luke Skywalker was a Tatooine farmboy who rises from humble beginnings to become one of the greatest Jedi the galaxy has ever known.",
        hit_points: 30,
        max_hit_points: 35,
        damage_range: 1..12,
        attack_description: "a lightsaber and a Blaster pistol"
      },
      %Character{
        name: "Anakin Skywalker",
        description:
          "Anakin Skywalker has the potential to become one of the most powerful Jedi ever, and was believed by some to be the prophesied Chosen One who would bring balance to the Force.",
        hit_points: 28,
        max_hit_points: 37,
        damage_range: 1..10,
        attack_description: "a lightsaber"
      },
      %Character{
        name: "Obi-Wan",
        description: "Obi-Wan Kenobi is a noble man and gifted in the ways of the Force",
        hit_points: 25,
        max_hit_points: 35,
        damage_range: 6..15,
        attack_description: "a Lightsaber"
      },
      %Character{
        name: "Lando Calrissian",
        description:
          "Lando Calrissian changed from a get-rich-quick schemer to a selfless leader in the fight against the Empire.",
        hit_points: 10,
        max_hit_points: 15,
        damage_range: 1..4,
        attack_description: "a Blaster pistol"
      },
      %Character{
        name: "Princess Leia Organa",
        description:
          "Princess Princess Leia Organa was one of the Rebel Alliance's greatest leaders, fearless on the battlefield and dedicated to ending the tyranny of the Empire.",
        hit_points: 12,
        max_hit_points: 20,
        damage_range: 1..12,
        attack_description: "a Blaster pistol"
      },
      %Character{
        name: "Han Solo",
        description:
          "Smuggler. Scoundrel. Hero. Han Solo, captain of the Millennium Falcon, is one of the great leaders of the Rebel Alliance.",
        hit_points: 15,
        max_hit_points: 20,
        damage_range: 1..5,
        attack_description: "a Blaster pistol"
      },
      %Character{
        name: "Chewbacca",
        description:
          "A legendary Wookiee warrior and Han Solo's co-pilot aboard the Millennium Falcon, Chewbacca is part of a core group of Rebels who restore freedom to the galaxy.",
        hit_points: 12,
        max_hit_points: 15,
        damage_range: 1..5,
        attack_description: "a Bowcaster"
      },
      %Character{
        name: "Master Yoda",
        description:
          "Jedi Master and stronger than most in his connection with the Force. Small in size but wise and powerful, he trained Jedi for over 800 years.",
        hit_points: 30,
        max_hit_points: 40,
        damage_range: 7..15,
        attack_description: "a lightsaber dagger"
      }
    ]
end
