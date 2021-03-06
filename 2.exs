# Each new term in the Fibonacci sequence is generated by adding the previous
# two terms. By starting with 1 and 2, the first 10 terms will be:
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose values do not exceed
# four million, find the sum of the even-valued terms.

even? = fn val -> rem(val, 2) == 0 end
not_over? = fn val, max -> val <= max end

fibs =
  Stream.unfold({1, 2}, fn {a, b} -> {a, {b, a + b}} end)
  |> Stream.filter(even?)
  |> Stream.take_while(&(not_over?.(&1, 4_000_000)))
  |> Enum.to_list

IO.inspect(fibs)
IO.inspect(Enum.sum(fibs))
