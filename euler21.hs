{-
Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000
-}

factorise n = [x | x <- [1..(n `div` 2)], n `mod` x == 0]

amicable n = let m = sum $ factorise n in
                 (m /= n) && (sum $ factorise m) == n

sum_amicable_below n = sum [x | x <- [1..n], amicable x]

main = do
    print $ sum_amicable_below 10000
