{-
2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^1000?
-}

sumdigit 0 = 0
sumdigit x = (x `mod` 10) + sumdigit (x `div` 10)

sum_2n n = sumdigit(2^n) 


