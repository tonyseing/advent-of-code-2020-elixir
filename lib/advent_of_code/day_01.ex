defmodule AdventOfCode.Day01 do
  def part1(nums) do    
    [candidate | _] = 
      for ns1 <- nums, ns2 <- nums, 
          isSum2020?([ns1, ns2]), 
          do: ns1 * ns2
    
    candidate
  end

  def part2(nums) do
    [candidate | _] = 
      for ns1 <- nums, ns2 <- nums, ns3 <- nums,
          isSum2020?([ns1, ns2, ns3]), 
          do: ns1 * ns2 * ns3
    
    candidate
  end

  defp isSum2020?(ns) do
    Enum.sum(ns) == 2020 
  end
end
