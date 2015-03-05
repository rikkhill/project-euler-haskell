-- Project Euler Problem 6

main = putStrLn (show ( ( sum (map (\x -> x*x) [1..100]) ) - (round( (sum [1..100]) ** 2)) ) )
