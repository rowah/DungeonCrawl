defmodule DungeonCrawl.Character do
  defstruct name: nil,
            description: nil,
            hit_points: 0,
            max_hit_points: 0,
            attack_description: nil,
            damage_range: nil

  defimpl String.Chars do
    def to_string(character), do: character.name
  end

  # @type directive starts the type definition followed by its name t
  @type t :: %DungeonCrawl.Character{
          name: String.t(),
          description: String.t(),
          hit_points: non_neg_integer,
          max_hit_points: non_neg_integer,
          attack_description: String.t(),
          damage_range: Range.t()
        }

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
