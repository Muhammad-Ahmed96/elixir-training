defmodule Test do
  def calculate_score(string) do
		map = %{a: 1, e: 1, i: 1, o: 1, u: 1, l: 1, n: 1, r: 1, s: 1, t: 1, d: 2, g: 2, b: 3, c: 3, m: 3, p: 3, f: 4, h: 4, v: 4, w: 4, Y: 4, k: 5, j: 8, x: 8, q: 10, z: 10}
		str = String.split(string,"", trim: true)
		score = find_score(str,map)
	end

	def find_score(list,map) do
		if Enum.count(list) > 0 do
			[head| tail]= list
			map[String.to_atom(String.downcase(head))] + find_score(tail,map)
		else
			0
		end
	end
end

IO.puts Test.calculate_score("cabbage")