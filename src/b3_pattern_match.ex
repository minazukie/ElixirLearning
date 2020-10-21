x = 1

1 = x

try do
  2 = x
rescue
  _ in MatchError -> "Match Error!"
end

IO.inspect({x, ^x} = {2, 1})  # {2, 1}

greeting = "Hello"

greet = fn
  (^greeting, name) -> "Hi #{name}"
  (greeting, name) -> "#{greeting}, #{name}"
end

IO.inspect(greet.("Hello", "Sean"))  # "Hi Sean"
IO.inspect(greet.("NoHello", "Sean"))  # "NoHello, Sean"
