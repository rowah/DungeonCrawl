defmodule DungeonCrawlTest do
  # use permits another module to take actions and inject code on the calling module
  use ExUnit.Case
  doctest DungeonCrawl

  test "greets the world" do
    assert DungeonCrawl.hello() == :world
  end
end
