defmodule AdventOfCode.Day01Test do
  use ExUnit.Case

  import AdventOfCode.Day01

  test "part1" do
    input = [2000, 20, 10]
    result = part1(input)
    
    assert result == 40000
  end

  test "part2" do
    input = [2000, 3, 15, 5]
    result = part2(input)
    
    assert result == 150000
  end
end
