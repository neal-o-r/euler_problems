sum_3_5 :: Int -> Int
sum_3_5 n =
	sum (filter p [1 .. n-1])
	where
	p x = or ([x `mod` 3 == 0, x `mod` 5 == 0])
