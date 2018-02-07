{-

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?

-}

 -- this is a very slow way of doing this.
primes = sieve [2..] 
    where 
        sieve (p:xs) = p : sieve (filter (\x -> mod x p /= 0) xs)

prime_n n = primes !! n
