defmodule Test do
  def pling_plang(number) do
		list = %{3 => "Pling", 5 => "Plang", 7 => "Plong"}
		factors = Enum.map(1..number, fn(x) ->
			if rem(number,x) == 0 do
				x
			end
		end)
		|> Enum.map(fn(x) -> if list[x] do list[x] end end)
		|> Enum.filter(fn(x) -> x end)
		if Enum.count(factors) > 0 do
			IO.puts Enum.join(factors)
		else
			IO.puts number
		end
	end
end

Test.pling_plang(30)