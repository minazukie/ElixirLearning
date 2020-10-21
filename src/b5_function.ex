sum = fn (a, b) -> a + b end

IO.inspect(sum.(1, 3))  # 4

sum2 = &(&1 + &2)

IO.inspect(sum2.(1, 3)) # 4


defmodule Greeter do
  def hello(name) do
    "Hello, " <> name
  end
  def hello_single_line(name), do: "Hello, " <> name
end

IO.inspect(Greeter.hello("DJF"))  # "Hello, DJF"
IO.inspect(Greeter.hello_single_line("DJF"))  # "Hello, DJF"


defmodule Length do
  def of([]), do: 0
  def of([_ | tail]), do: 1 + of(tail)
  defp private_func(), do: 0  # private funciton
end

IO.inspect(Length.of([1, 2, 3]))  # 3


defmodule Greeter2 do
  def hello(names) when is_list(names) do
    names
    |> Enum.join(", ")
    |> hello
  end

  def hello(name) when is_binary(name) do
    phrase() <> name
  end

  defp phrase, do: "Hello, "

  def default_value(name \\ "DEFAULT") do
    name
  end
end

IO.inspect(Greeter2.hello(["Sean", "Steve"]))  # "Hello, Sean, Steve"
IO.inspect(Greeter2.hello("123"))  # "Hello, 123"
IO.inspect(Greeter2.default_value())  # "DEFAULT"
