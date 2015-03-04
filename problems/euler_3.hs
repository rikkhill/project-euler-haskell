-- euler_3.hs - Project Euler Problem 3
import Lib.Helper
-- This really isn't working yet
main = putStrLn ( show ( foldr max 0 [x | x <- factors 100, is_prime x] ) )
