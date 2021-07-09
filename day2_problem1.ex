defmodule Test do
  def count_words(string) do
		list_count = []
		str = String.split(string)
		new_list = count_word_occurance(str,0,Enum.count(str),list_count)
		Enum.each(new_list, fn(element) ->
			{key,value}=element
			IO.puts "#{key}: #{value}"
		end)
	end

	def count_word_occurance(arr, index ,length,list_count) do
		if length > 0 do
			if list_count[String.to_atom(Enum.at(arr,index))] do
				x = list_count[String.to_atom(Enum.at(arr,index))];
				x = x+1
				list_count = Keyword.replace(list_count, String.to_atom(Enum.at(arr,index)), x);
				count_word_occurance(arr,index+1, length - 1, list_count)
			else
				list_count = list_count ++ [{String.to_atom(Enum.at(arr,index)), 1}];
				count_word_occurance(arr,index+1, length - 1, list_count)
			end
		else
			list_count
		end
	end
end

Test.count_words("hello olly olly in hello come free hello")