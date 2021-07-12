

defmodule Test do

  def find_anagrams(word, list) do
    new_word = String.split(word,"", split: true)
      |> Enum.sort
      |> Enum.join
      filtered_list = Enum.filter(list, fn(ele) ->
        sorted_word = String.split(ele,"",trim: true)
        |> Enum.sort
        |> Enum.join
        String.contains? sorted_word, new_word
      end)
  end
end

IO.inspect Test.find_anagrams("listen",["enlists","google","inlets","banana"])
