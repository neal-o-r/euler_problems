prime_factors :: Int -> [Int]

prime_factors 1 = []
prime_factors n
  | factors == []  = [n]
  | otherwise = factors ++ prime_factors (n `div` (head factors))
  where factors = take 1 $ filter (\x -> (n `mod` x) == 0) [2 .. n-1]

euler_3 = 
	maximum (prime_factors num)
	where
	num = 600851475143

