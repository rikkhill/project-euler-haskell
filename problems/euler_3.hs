-- euler_3.hs - Project Euler Problem 3
import Lib.Helper
-- This should work, but it's clearly very inefficient
-- It produces the corrext result on smaller numbers, but the
-- one we're given doesn't complete in a timely fashion.
main = putStrLn (show (last [x | x <- (factors 600851475143), is_prime x]))
