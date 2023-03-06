defmodule DungeonCrawl.CLI.RoomActionsChoice do
  alias Mix.Shell.IO, as: Shell
  import DungeonCrawl.CLI.BaseCommands

  def start(room) do
    room_actions = room.actions

    find_action_by_index = fn index ->
      Enum.at(room_actions, index)
    end

    Shell.info(room.description)

    chosen_action =
      room_actions
      |> Enum.map(fn room_actions -> room_actions.label end)
      |> display_options()
      |> generate_question()
      |> parse_input()
      |> find_action_by_index.()

    {room, chosen_action}
  end
end
