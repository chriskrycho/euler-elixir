# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the
# multiples of 3 or 5 below 1000.

multiple_of_n? = fn val, n -> rem(val, n) == 0 end
1..999 |> Enum.filter(&(multiple_of_n?.(&1, 3) or multiple_of_n?.(&1, 5))) |> Enum.sum