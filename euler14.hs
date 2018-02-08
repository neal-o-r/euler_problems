{-
   https://projecteuler.net/problem=14
   -}

maxIndex xs = head $ filter ((== maximum xs) . (xs !!)) [0..]

collatz :: Int -> Int
collatz 0 = 0
collatz 1 = 1
collatz x = (collatz(if even x then (x `div` 2) else (3*x + 1))) + 1

longest_chain n = maxIndex(map collatz [1..n])
