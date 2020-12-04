defmodule Mix.Tasks.D03.P1 do
  use Mix.Task

  import AdventOfCode.Day03

  @shortdoc "Day 03 Part 1"
  def run(args) do
    input = mapFromTextFile()

    if Enum.member?(args, "-b"),
      do: Benchee.run(%{part_1: fn -> input |> part1() end}),
      else:
        {input, {3, 1}}
        |> part1()
        |> IO.inspect(label: "Part 1 Results")
  end

  defp mapFromTextFile() do
    {:ok, contents} = File.read("./data/input_day_03.txt")

    contents
    |> String.split("\n", trim: true)
    |> Enum.map(fn rowStr -> String.split(rowStr, "", trim: true) end)
  end
end
