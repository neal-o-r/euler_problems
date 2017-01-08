fib 0 = 0
fib 1 = 1
fib n = fib(n-1) + fib(n-2)

 -- This is quite an inefficient implementation, but it works
sum_even_fib :: Int -> Int
sum_even_fib n =
	sum (takeWhile (<n) (filter even (map fib [1..])))

