-- euler_1.hs - Project Euler Problem #1
-- My first ever Haskell program (!)

divisors_3_5 :: [Int] -> [Int]
-- List comprehension
divisors_3_5 ns = [x | x <- ns, mod x 3 == 0 || mod x 5 == 0]

-- could be a one-liner, but this is a functional language and I'm getting
-- my money's worth out of it
main = putStrLn (show (sum (divisors_3_5 [1..999])))
