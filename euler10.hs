{-
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
   -}

primes = sieve [2..]
    where
        sieve (p:xs) = p : sieve (filter (\x -> mod x p /= 0) xs)

prime_sum = sum(takeWhile (< 2000000) primes)
