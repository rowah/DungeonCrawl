defmodule DungeonCrawl.Battle do
  alias DungeonCrawl.Character
  alias Mix.Shell.IO, as: Shell

  # checks if one of the characters has zero hit points which makes the fight to be over and return a tuple with the chars
  def fight(
        char_a = %{hit_points: hit_points_a},
        char_b = %{hit_points: hit_points_b}
      )
      when hit_points_a == 0 or hit_points_b == 0,
      do: {char_a, char_b}

  def fight(char_a, char_b) do
    char_b_after_damage = attack(char_a, char_b)
    char_a_after_damage = reverse_attack(char_a, char_b)
    fight(char_a_after_damage, char_b_after_damage)
  end

  # checks if the attacker has zero hit points; if so, nothing happens to the attacked character
  def attack(%{hit_points: hit_points_a}, character_b) when hit_points_a == 0, do: character_b

  # otherwise the attacked character receives a random amount of damage from the attacker’s damage range.
  def attack(char_a, char_b) do
    # gives a random damage within the attacker's damage range
    damage = Enum.random(char_a.damage_range)
    char_b_after_damage = Character.take_damage(char_b, damage)

    char_a
    |> attack_message(damage)
    |> Shell.info()

    char_b_after_damage
    |> receive_message(damage)
    |> Shell.info()

    char_b_after_damage
  end

  def reverse_attack(%{hit_points: hit_points_b}, character_a) when hit_points_b == 0,
    do: character_a

  def reverse_attack(char_a, char_b) do
    # gives a random damage within the attacker's damage range
    damage = Enum.random(char_b.damage_range)
    char_a_after_damage = Character.take_damage(char_a, damage)

    char_b
    |> attack_message(damage)
    |> Shell.info()

    char_a_after_damage
    |> receive_message(damage)
    |> Shell.info()

    char_a_after_damage
  end

  defp attack_message(character = %{name: "You"}, damage) do
    "You attack with #{character.attack_description} " <> "and deal #{damage} damages."
  end

  defp attack_message(character, damage) do
    "#{character.name} attacks with " <>
      "#{character.attack_description} and " <> "deals #{damage} damages."
  end

  defp receive_message(character = %{name: "You"}, damage) do
    "You receive #{damage} damages. Your current HP: #{character.hit_points}."
  end

  defp receive_message(character, damage) do
    "#{character.name} receives #{damage} damages. " <>
      "#{character.name}'s current HP: #{character.hit_points}."
  end
end
