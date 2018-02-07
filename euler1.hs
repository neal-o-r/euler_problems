{- https://projecteuler.net/problem=1

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.

-}

sum_3_5 :: Int -> Int
sum_3_5 n = sum([3,6..n-1]) + sum([5,10..n-1])
