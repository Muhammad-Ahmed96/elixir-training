defmodule Test do
  def calculate_age(age,planet) do
		ages_list = %{"Earth" => 31557600, "Mercury" => 76005.4381992, "Venus" => 48976.5305218, "Mars" => 593540.326901, "Jupiter" => 3743556.59124, "Saturn" => 9292923.62885, "Uranus" => 26513700.1933, "Neptune" => 52004185.6003}
		if ages_list[planet] do
			age / ages_list[planet]
		else
			"#{planet} does not exist"
		end
	end
end

IO.puts Test.calculate_age(1000000000, "Earth")