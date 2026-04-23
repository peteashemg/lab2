s = IO.gets("S: ") |> String.trim()
t = IO.gets("T: ") |> String.trim()

if String.length(s) == String.length(t) and String.contains?(s <> s, t) do
  IO.puts "Результат Да"
else
  IO.puts "Результат Нет"



