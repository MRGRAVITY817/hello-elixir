defmodule Longest do
  def length(word_list) do
    max_length =
      Enum.sort(word_list, &(String.length(&1) > String.length(&2)))
      |> List.first()
      |> String.length()

    for item <- word_list do
      count = Integer.floor_div(max_length - String.length(item), 2) + String.length(item)
      IO.puts(String.pad_leading(item, count))
    end
  end
end
