if String.valid?("sdfsdf") do
  IO.inspect("hello")  # will print
else
  IO.inspect("nonono")
end

unless String.valid?("sdfsdf") do
  IO.inspect("hello")
else
  IO.inspect("nonono")  # will print
end

case {:ok, "hello world"} do
  {:ok, result} -> IO.inspect(result)  # will print
  {:err} -> IO.inspect("oh my god!")
  _ -> "catch all"
end

# Guard Clause: https://hexdocs.pm/elixir/guards.html#list-of-allowed-expressions
case {1, 2, 3} do
  {1, x, 3} when x > 0 -> IO.inspect("ok!")  # will print
  _ -> "oh no"
end
