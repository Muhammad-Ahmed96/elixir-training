
defmodule Flatten do

  def flatten_nested(list, acc \\ []) do
    flatten_nested_rev(list, acc)
    |> Enum.reverse()
    |> Enum.filter(fn(x) ->  x end)
  end

  def flatten_nested_rev(list, acc \\ [])

  def flatten_nested_rev([], acc) do
    acc
  end

  def flatten_nested_rev([list | rest], acc) when is_list(list) do
    flatten_nested_rev(rest, flatten_nested_rev(list, acc))
  end

  def flatten_nested_rev([element | rest], acc) do
    flatten_nested_rev(rest, [element | acc])
  end
end


IO.inspect Flatten.flatten_nested([1,[2,[3],nil,4],[nil],[[5]]])
