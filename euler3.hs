{-
 - The prime factors of 13195 are 5, 7, 13 and 29.
 -
 - What is the largest prime factor of the number 600851475143 ?
 -
 -}

prime_factors :: Int -> [Int]
prime_factors 1 = []
prime_factors n
  | factors == [] = [n]
  | otherwise = factors ++ prime_factors (n `div` (head factors))
  where factors = take 1 $ filter (\x -> (n `mod` x) == 0) [2 .. n-1]

largest_prime_factor :: Int -> Int
largest_prime_factor n = maximum(prime_factors n)
