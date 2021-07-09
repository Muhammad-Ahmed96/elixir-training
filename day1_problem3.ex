defmodule Test do
  def speak(question) do
		cond do
			question == "Question" ->
				"Sure"
			question == "Yell" ->
				"Whoa, chill out!"
			question == "Yell A Question" ->
				"Calm down, I know what I'm doing!"
			question == "Address Without Saying Anything" ->
				"Fine. Be that way"
			true ->
				"Whatever"
		end
	end
end

IO.puts Test.speak("asdfasdfsdf")