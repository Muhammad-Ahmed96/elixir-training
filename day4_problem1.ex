defmodule Test do

  def find_nth_prime(n,number \\ 2,i\\1) do
    require IEx; IEx.pry
    if n == 1 do
      2
    else
      if i == n do
        number
      else
        if is_prime(number) do
          find_nth_prime(n, number,i+1)
        else
          find_nth_prime(n, number+1,i)
        end
      end
    end
  end

  def is_prime(n) when n != 2 and n != 1 do
    divisible = 2..div(n,2)
    |> Enum.map(fn(i) -> rem(n,i) == 0 end)
    if true in divisible do
      false
    else
      true
    end
  end

  def is_prime(n) when n == 2 do
    true
  end

  def is_prime(n) when n ==1 do
    false
  end
end

IO.puts Test.find_nth_prime(3)
