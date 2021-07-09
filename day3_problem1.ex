defmodule Test do
	defguard check_char(x) when (String.downcase(x) |> String.to_charlist |> hd) in 97..122

  def encode(string,key) do
		str = String.split(string,"",trim: true)
		new_str = Enum.map(str, fn(x) when check_char(x) ->
			code = String.downcase(x)
			|> String.to_charlist
			|> hd

			if (code+key) > 122 do
				<<((code+key) - 26)::utf8>>
			else
				<<(code+key)::utf8>>
			end
		end)
		IO.puts Enum.join(new_str)
	end
end

Test.encode("The quick brown fox jumps over the lazy dog", 13)
