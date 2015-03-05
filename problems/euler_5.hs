-- euler_5.hs - Project Euler Problem 5
import Data.List
import Lib.Helper

main = putStrLn (show (foldl1 lcm [1..20] ))
