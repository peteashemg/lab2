n_str = IO.gets("") |> String.trim()
n = String.to_integer(n_str)

tickets = Enum.map(1..n, fn _ ->
  [u, v] = IO.gets("") |> String.split()
  {u, v}
end)
routes = Enum.into(tickets, %{})
{starts, ends} = Enum.unzip(tickets)
start_city = Enum.find(starts, fn city -> city not in ends end)

step = fn func, city ->
  case Map.get(routes, city) do
    nil -> city
    next_city -> func.(func, next_city)
  end
end

IO.puts step.(step, start_city)

