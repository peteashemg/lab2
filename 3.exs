_n_str = IO.gets("") |> String.trim()
nums_str = IO.gets("") |> String.trim()

nums_str
|> String.split()
|> Enum.map(fn s ->
  val = String.to_integer(s)
  if val < 10 do
    "-"
  else
    s 
    |> String.graphemes() 
    |> Enum.count(fn char -> rem(String.to_integer(char), 2) == 0 end)
  end
end)
|> Enum.join(" ")
|> IO.puts()


