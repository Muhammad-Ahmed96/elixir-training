
defmodule Test do
  def is_isogram(string) do
    str = String.split(string,"",trim: true)

    flags = check_char_uniqueness(str,[])
    if true in flags do
      "Not Isogram"
    else
      "Isogram"
    end
  end

  def check_char_uniqueness([head|tail],arr) do
    if Enum.count(tail) > 0 do
      if Enum.member?(tail,head) do
        check_char_uniqueness(tail,[true|arr])
      else
        check_char_uniqueness(tail,[false|arr])
      end
    else
      arr
    end
  end
end

IO.puts Test.is_isogram("lumberjacksl")
