defmodule Mix.Tasks.D02.P1 do
  use Mix.Task

  import AdventOfCode.Day02

  @shortdoc "Day 02 Part 1"
  def run(args) do
    input = rulesFromTextFile()

    if Enum.member?(args, "-b"),
      do: Benchee.run(%{part_1: fn -> input |> part1() end}),
      else:
        input
        |> part1()
        |> IO.inspect(label: "Part 1 Results")
  end

  defp rulesFromTextFile() do
    {:ok, contents} = File.read("./data/input_day_02.txt")

    contents
    |> String.split("\n", trim: true)
    |> Enum.map(fn ruleStr -> String.split(ruleStr, " ", trim: true) end)
    |> Enum.map(&ruleFromStr/1)
  end

  defp ruleFromStr(ruleStr) do
    %{
      :limits => parseLimits(Enum.at(ruleStr, 0)),
      :target => parseSearchTerm(Enum.at(ruleStr, 1)),
      :source => String.split(Enum.at(ruleStr, 2), "", trim: true)
    }
  end

  defp parseLimits(ruleTerm) do
    terms = String.split(ruleTerm, "-")
    {Enum.at(terms, 0) |> String.to_integer(), Enum.at(terms, 1) |> String.to_integer()}
  end

  defp parseSearchTerm(ruleTerm) do
    String.slice(ruleTerm, 0..0)
  end
end
