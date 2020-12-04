defmodule Mix.Tasks.D03.P2 do
  use Mix.Task

  import AdventOfCode.Day03

  @shortdoc "Day 03 Part 2"
  def run(args) do
    input = mapFromTextFile()

    if Enum.member?(args, "-b"),
      do: Benchee.run(%{part_2: fn -> input |> part2() end}),
      else:
        {input, [{1, 1}, {3, 1}, {5, 1}, {7, 1}, {1, 2}]}
        |> part2()
        |> IO.inspect(label: "Part 2 Results")
  end

  defp mapFromTextFile() do
    {:ok, contents} = File.read("./data/input_day_03.txt")

    contents
    |> String.split("\n", trim: true)
    |> Enum.map(fn rowStr -> String.split(rowStr, "", trim: true) end)
  end
end
