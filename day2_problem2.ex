defmodule Test do
  def recite_lyrics(number) do
		case number do
			1 ->
				IO.puts "#{number} bottle of beer on the wall, #{number} bottle of beer."
				IO.puts "Take it down and pass it around, no more bottles of beer on the wall."
				recite_lyrics(number-1)
			0 ->
				IO.puts "No more bottles of beer on the wall, no more bottles of beer."
				IO.puts "Go to the store and buy some more, #{number} bottles of beer on the wall."
			_ ->
				IO.puts "#{number} bottles of beer on the wall, #{number} bottles of beer."
				IO.puts "Take one down and pass it around, #{number-1} bottles of beer on the wall."
				recite_lyrics(number-1)
			end
	end
end

Test.recite_lyrics(10)