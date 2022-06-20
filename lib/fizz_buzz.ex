defmodule FizzBuzz do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  def handle_file_read({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map(&String.to_integer/1)
    # Enum.map(list, fn num -> String.to_integer(num) end)
    # Enum.map(list, &String.to_integer/1) -> /1 means one parameter -> Arity = 1
  end
  
  def handle_file_read(:error, reason), do: "Error reading file #{reason}"
end
