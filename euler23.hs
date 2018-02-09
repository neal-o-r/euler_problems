
factorise n = [x | x <- [1..(n `div` 2)], n `mod` x == 0]

abundant n = (sum $ factorise n) > n

sum_abundant = sum [x | x <- [1..28123], abundant x]

main = do
    print sum_abundant
