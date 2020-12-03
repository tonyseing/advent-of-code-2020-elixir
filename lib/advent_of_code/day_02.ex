defmodule AdventOfCode.Day02 do
  def part1(args) do
    args |> Enum.count(&fitsRules?/1)
  end

  def part2(args) do
    args |> Enum.count(&fitsIndexRules?/1)
  end

  defp fitsRules?(rule) do
    %{
      limits: {lower_limit, upper_limit},
      target: target,
      source: source
    } = rule

    Enum.count(source, &(&1 == target)) |> (&between/3).(lower_limit, upper_limit)
  end

  defp fitsIndexRules?(rule) do
    %{
      indices: {index1, index2},
      target: target,
      source: source
    } = rule

    char1 = Enum.at(source, index1 - 1)
    char2 = Enum.at(source, index2 - 1)
    (char1 == target or char2 == target) and not (char1 == target and char2 == target)
  end

  defp between(count, lower, upper) do
    count >= lower && count <= upper
  end
end
