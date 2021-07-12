

defmodule Student do

  def add_user(name,grade,list) do
    if list[grade] do
      Map.put list, grade, [name | list[grade]]
    else
      Map.put list, grade, [name]
    end
  end

  def student_list(list) do
    IO.inspect list
  end

  def get_students(grade,list) do
    list[grade]
  end

  def get_sorted_list(list) do
    list = Enum.to_list(list) |> Enum.sort_by(fn({k,v}) -> k end)
    Enum.each(list, fn({grade, names}) ->
      IO.puts "Grade :#{grade}"
      IO.puts Enum.sort(names) |> Enum.join(",")
    end)
  end
end

list = %{}
list = Student.add_user("Ahmed",2,list)
list = Student.add_user("Ali",1,list)
list = Student.add_user("Hamza",2,list)
Student.get_sorted_list(list)
