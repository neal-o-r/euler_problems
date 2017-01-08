sum_of_sq :: Int -> Int
sum_of_sq n =
	sum([1..n])^2 - sum(map (^2) [1..n]) 
	
