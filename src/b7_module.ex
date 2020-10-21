defmodule A do
  @aaa "dsfs"
  def get_aaa do
    @aaa
  end
  def hello(name) do
    "hello #{name}"
  end
end

defmodule A.B do
  def hello_from_b(name) do
    "hello_b #{name}"
  end
end

defmodule A.Person do
  defstruct name: "Sean", age: 20
end

defmodule Main do
  def main do
    IO.inspect(A.get_aaa)  # "dsfs"
    IO.inspect(A.B.hello_from_b("bbb"))  # "hello_b bbb"
    IO.inspect(%A.Person{})
  end
end

Main.main()
