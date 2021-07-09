defmodule Test do
  def make_series(string,count) do
		str = String.split(string, "", trim: true)
		if count <= Enum.count(str) do
			print_series(str,count)
		else
			IO.puts "Cannot make #{count}-series from #{string}"
		end
	end

	def print_series(list,count) do
		if Enum.count(list) >= count do
			new_list = []
			new_list = new_list ++ Enum.map(0..count-1, fn(x) -> Enum.at(list,x)  end)
			IO.puts new_list
			[head|tail] = list
			print_series(tail,count)
		end
	end
end

Test.make_series("49142",3)