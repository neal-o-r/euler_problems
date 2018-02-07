{-

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a^2 + b^2 = c^2

For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
    Find the product abc.
 -}

pythagorean_triples = [(a,b,c) | a <- [1..400], b <- [1..a], c <- [1..sqrt(a^2 + b^2)], a^2 + b^2 == c^2, a + b + c == 1000] 
