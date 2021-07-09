
defmodule Test do

	def map(list) do
		make_new_list(list,0)
	end

	def make_new_list(list,index) do
		if Enum.at(list, index) do
			make_new_list(list,index+1)
			[] ++ [Enum.at(list,index) * 2]
		end
	end

	def sum(arr) do
		if Enum.count(arr) > 0 do
			[head|tail] = arr
			head + sum(tail)
		else
			0
		end
	end
end

IO.puts Test.sum([1,2,3,4,5])
# IO.puts Test.map([1,2,3,4,5])
