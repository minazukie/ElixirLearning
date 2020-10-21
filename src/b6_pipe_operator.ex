a = fn (str) -> "a: #{str}" end
b = fn (str) -> "b: #{str}" end
c = fn (str) -> "c: #{str}" end
d = fn (str) -> "d: #{str}" end


IO.inspect("hello" |> a.() |> b.() |> c.() |> d.())  # "d: c: b: a: hello"
