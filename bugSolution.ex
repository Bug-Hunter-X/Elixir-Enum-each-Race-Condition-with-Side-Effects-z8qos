```elixir
list = [1, 2, 3, 4, 5]

result = Enum.map(list, fn x ->
  if x == 3 do
    Process.sleep(1000) # Simulate some work
  end
  {x, x * 2} # Example side effect: compute a value related to x
  end)

Enum.each(result, fn {x, doubled_x} ->
  IO.puts("x: #{x}, doubled_x: #{doubled_x}")
end)
```