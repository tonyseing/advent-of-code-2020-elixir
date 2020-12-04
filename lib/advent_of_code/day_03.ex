defmodule AdventOfCode.Day03 do
  @moduledoc """
    https://adventofcode.com/2020/day/3
  """

  def part1({mapRows, {right, down}}) do
    rowStreams = mapRows |> Enum.map(&Stream.cycle/1)
    [_ | rows] = Enum.take_every(rowStreams, down)
    [_ | col_indices] = Enum.take_every(0..(right * length(rows)), right)

    Enum.zip(rows, col_indices)
    |> Enum.map(fn {row, col_index} -> Enum.at(row, col_index) end)
    |> Enum.count(&(&1 == "#"))
  end

  def part2({mapRows, slopes}) do
    Enum.reduce(slopes, 1, fn slope, acc -> part1({mapRows, slope}) * acc end)
  end
end
