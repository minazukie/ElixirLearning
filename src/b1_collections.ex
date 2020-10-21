list = [3.14, :pie, "Apple"]

list2 = ["π" | list]

IO.inspect(list2) # ["π", 3.14, :pie, "Apple"]

list3 = [1, 2] ++ [3, 4, 1]

IO.inspect(list3) # [1, 2, 3, 4, 1]

list4 = [1, 2, 2, 3, 2, 3] -- [1, 2, 3, 2]

IO.inspect(list4)  # [2, 3]

head = hd [3.14, :pie, "Apple"]

IO.inspect(head)  # 3.14

tail = tl [3.14, :pie, "Apple"]

IO.inspect(tail)  # [:pie, "Apple"]

tuple = {3.14, :pie, "Apple"}

IO.inspect(tuple)

kw_list = [foo: "bar", hello: "world"]

IO.inspect(kw_list)

map = %{:foo => "bar", "hello" => :world}

IO.inspect(map[:foo])  # "bar"
IO.inspect(map["hello"])  # :world
IO.inspect(map.foo)  # "bar"

map2 = Map.put(map, :haha, "xixi")

IO.inspect(map2)  # %{:foo => "bar", :haha => "xixi", "hello" => :world}
