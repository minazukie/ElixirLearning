is_all = Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 3 end)

IO.inspect(is_all)  # false

is_any = Enum.any?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 5 end)

IO.inspect(is_any)  # true


# for-each

Enum.each(["one", "two", "three"], fn(s) -> IO.inspect(s) end)

# map

list = Enum.map([0, 1, 2, 3], fn(x) -> x - 1 end)

IO.inspect(list)  # [-1, 0, 1, 2]


# filter

list2 = Enum.filter([1, 2, 3, 4], fn(x) -> rem(x, 2) == 0 end)

IO.inspect(list2)  # [2, 4]

# reduce

sum = Enum.reduce([1, 2, 3], fn(x, s) -> x + s end)

IO.inspect(sum)  # 6


# sort

sorted_list = Enum.sort([5, 6, 1, 3, -1, 4])

IO.inspect(sorted_list)  # [-1, 1, 3, 4, 5, 6]


# dedup

list3 = Enum.uniq([1, 2, 3, 2, 1, 1, 1, 1, 1])

IO.inspect(list3)  # [1, 2, 3]
