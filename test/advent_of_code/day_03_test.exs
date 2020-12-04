defmodule AdventOfCode.Day03Test do
  use ExUnit.Case

  import AdventOfCode.Day03

  test "part1" do
    slope = {2, 1}

    mapRows = [
      [".", ".", "#", "."],
      ["#", ".", "#", "#"],
      [".", "#", ".", "."],
      [".", ".", "#", "."]
    ]

    result = part1({mapRows, slope})

    assert result == 2
  end

  test "part2" do
    mapRows = [
      [".", ".", "#", "."],
      ["#", ".", "#", "#"],
      [".", "#", ".", "."],
      [".", ".", "#", "."]
    ]

    result = part2({mapRows, [{2, 1}, {2, 1}, {1, 1}]})

    assert result == 0
  end
end
