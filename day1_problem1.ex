defmodule Test do
	def make_roman(number) do
		num = [1, 4, 5, 9, 10, 40, 50, 90,
           100, 400, 500, 900, 1000]
    sym = ["I", "IV", "V", "IX", "X", "XL",
           "L", "XC", "C", "CD", "D", "CM", "M"]
		i=12
		divide_number(number,num,sym,i)
	end

	def divide_number(n,num,sym,i) do
		if n > 0 do
			divisor = div(n,Enum.at(num,i))
			n = rem(n, Enum.at(num,i))
			print_roman(divisor,num,sym,i)
			i = i - 1
			divide_number(n,num,sym,i)
		end
	end

  def print_roman(d,num,sym,i) do
		if d > 0 do
			IO.write Enum.at(sym,i)
			print_roman(d-1,num,sym,i)
		end
	end
end
Test.make_roman(2445)