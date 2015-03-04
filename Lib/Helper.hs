-- Helper functions
-- (I don't know where this is supposed to go in my directory structure!)

module Lib.Helper where

-- All factors of an integer
-- (I don't know if this is the most efficient way of doing this)
factors :: Int -> [Int]
factors n = [x | x <-[1..n], mod n x == 0 ]

-- Primacy of an integer
is_prime :: Int -> Bool
is_prime n = if (elem n [2,3,5,7]) || mod n 2 == 0 || length [x | x <-[3,5..ceiling(sqrt(fromIntegral n))], mod n x == 0 ] == 0
                then True
                else False
