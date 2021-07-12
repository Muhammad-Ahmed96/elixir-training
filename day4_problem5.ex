

defmodule Test do

  def is_leap_year(year) do
     rem(year,4) == 0 and rem(year,100) != 0 || rem(year,400) == 0
  end
end

IO.puts Test.is_leap_year(2000)
