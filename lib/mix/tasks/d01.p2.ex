defmodule Mix.Tasks.D01.P2 do
  use Mix.Task

  import AdventOfCode.Day01

  @shortdoc "Day 01 Part 2"
  def run(args) do
    input = numsFromTextFile()

    if Enum.member?(args, "-b"),
      do: Benchee.run(%{part_2: fn -> input |> part2() end}),
      else:
        input
        |> part2()
        |> IO.inspect(label: "Part 2 Results")
  end

  def numsFromTextFile() do
    {:ok, contents} = File.read("./data/input_day_01.txt")
    
    contents 
      |> String.split("\n", trim: true)
      |> Enum.map(fn (n) -> String.to_integer(n) end)
  end
end
