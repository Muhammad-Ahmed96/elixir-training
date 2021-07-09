defmodule Test do
  def make_rna_compliment(string) do
		map = %{'G': 'C', 'C': 'G', 'T': 'A', 'A': 'U'}
		char_arr = String.split(string, "", trim: true)
		new_arr = Enum.map(char_arr, fn(e) ->
			if Map.get(map,String.to_atom(String.upcase(e))) == nil do 
				e 
			else 
				Map.get(map,String.to_atom(String.upcase(e))) 
			end 
		end)
		new_arr = Enum.join(new_arr)
		IO.puts new_arr
	end
end

Test.make_rna_compliment("ZGXCFTBA")