```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    Process.sleep(1000) # Simulate some work
  end
  IO.puts(x)
end)
```
This code will print the numbers 1,2,3,4,5 in order, with a delay after printing 3.  However, if IO.puts is replaced with a function which has side-effects, race conditions may occur because Enum.each doesn't guarantee order of execution when side effects are involved. 