defmodule DungeonCrawl.Heroes do
  alias DungeonCrawl.Character

  def all,
    do: [
      %Character{
        name: "R2-D2",
        description: "R2-D2 has strong defense and consistent damage.",
        hit_points: 18,
        max_hit_points: 18,
        damage_range: 4..5,
        attack_description: "a sword"
      },
      %Character{
        name: "C-3PO",
        description: "C-3PO has strong defense and consistent damage.",
        hit_points: 18,
        max_hit_points: 18,
        damage_range: 4..5,
        attack_description: "a sword"
      },
      %Character{
        name: "Luke Skywalker",
        description: "Luke Skywalker has strong defense and consistent damage.",
        hit_points: 18,
        max_hit_points: 18,
        damage_range: 4..5,
        attack_description: "a sword"
      },
      %Character{
        name: "Anakin Skywalker",
        description: "Anakin has both high variability of attack damage and strong health.",
        hit_points: 12,
        max_hit_points: 12,
        damage_range: 1..12,
        attack_description: "a lightsaber"
      },
      %Character{
        name: "Obi-Wan",
        description: "Ben Kenobi has strong attack, but low health.",
        hit_points: 8,
        max_hit_points: 8,
        damage_range: 6..10,
        attack_description: "a fireball"
      },
      %Character{
        name: "Lando Calrissian",
        description: "Lando Calrissian has high variability of attack damage.",
        hit_points: 12,
        max_hit_points: 20,
        damage_range: 1..12,
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
        hit_points: 12,
        max_hit_points: 12,
        damage_range: 1..12,
        attack_description: "a lightsaber"
      },
      %Character{
        name: "Chewbacca",
        description: "Chewbacca has high variability of attack damage.",
        hit_points: 12,
        max_hit_points: 20,
        damage_range: 1..12,
        attack_description: "a dagger"
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

  def take_damage(character, damage) do
    new_hit_points = max(0, character.hit_points - damage)
    # the %{ map | key: new_value } handy Elixir shortcut syntax updates the values of the struct
    %{character | hit_points: new_hit_points}
  end

  def heal(character, healing_value) do
    # min/2 function guarantees the hit points aren’t greater than the character’s maximum allowable hit points
    new_hit_points = min(character.hit_points + healing_value, character.max_hit_points)
    %{character | hit_points: new_hit_points}
  end

  def current_stats(character),
    do: "Player stats: #{character.hit_points}/#{character.max_hit_points}"
end
