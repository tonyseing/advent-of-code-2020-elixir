defmodule AdventOfCode.Day02Test do
  use ExUnit.Case

  import AdventOfCode.Day02

  test "part1" do
    input = [
      %{
        limits: {2, 3},
        source: ["r", "y"],
        target: "r"
      },
      %{
        limits: {2, 3},
        source: ["r", "y", "y"],
        target: "y"
      },
      %{
        limits: {0, 3},
        source: ["r", "y", "y", "y"],
        target: "y"
      }
    ]

    result = part1(input)

    assert result == 2
  end

  test "part2" do
    input = [
      %{
        indices: {1, 2},
        source: ["r", "y"],
        target: "r"
      },
      %{
        indices: {2, 3},
        source: ["r", "y", "y"],
        target: "y"
      },
      %{
        indices: {1, 3},
        source: ["r", "y", "y", "y"],
        target: "y"
      }
    ]

    result = part2(input)

    assert result == 2
  end
end
