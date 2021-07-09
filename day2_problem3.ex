defmodule Test do
  def length(list) do
		calculate_length(list,0)
	end

	def calculate_length(list,index) do
		if Enum.at(list, index) do
			1 + calculate_length(list, index + 1)
		else
			0
		end
	end
end

IO.puts Test.length([1,2,3,4,5,7,8,9,0,"234234","234234",true])