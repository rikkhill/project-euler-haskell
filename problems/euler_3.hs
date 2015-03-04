-- euler_3.hs - Project Euler Problem 3
import Lib.Helper
import Data.List

main = putStrLn (show (last [x | x <- (factors 600851475143), is_prime x]))
