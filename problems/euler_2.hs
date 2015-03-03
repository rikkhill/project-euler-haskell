-- euler_2.hs - Project Euler Problem 2

fibb ceil a b = if a + b > ceil
                then []
                else a + b : fibb ceil b (a + b)

main = putStrLn (show (sum [ x | x <- fibb 4000000 0 1, mod x 2 == 0 ] ) )
