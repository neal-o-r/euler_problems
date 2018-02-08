{-

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a^2 + b^2 = c^2

For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
    Find the product abc.
 -}

takeWhileInclusive :: (a -> Bool) -> [a] -> [a]
takeWhileInclusive _ [] = []
takeWhileInclusive p (x:xs) = x : if p x then takeWhileInclusive p xs
                                         else []

p = 1000
pythagorean_triples = [[a,b,c] | a <- [1..p], b <- [1..(a-1)], c <- [1..(p - b - a)], a^2 + b^2 == c^2]

sum_pt_1000 = takeWhileInclusive (\x -> sum(x) /= 1000) pythagorean_triples

