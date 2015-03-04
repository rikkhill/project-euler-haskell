-- Helper functions
module Lib.Helper where

import Data.List

-- All factors of an integer, sorted
smallfactors :: Int -> [Int]
smallfactors n = [ x | x <-[2..ceiling(sqrt(fromIntegral n))], mod n x == 0 ]

bigfactors :: Int -> [Int] -> [Int]
bigfactors n sf = sort (map (\x -> (floor ((fromIntegral n) / (fromIntegral x)))) sf)

factors :: Int -> [Int]
factors n = union (smallfactors n) (bigfactors n (smallfactors n))

-- Primacy of an integer
-- Hacky short-circuiting looks ugly but should be faster
is_prime :: Int -> Bool
is_prime n = if (n /= 2 && mod n 2 == 0)
                || (length [x | x <-[3,5..(max (ceiling(sqrt(fromIntegral n))) 6)], mod n x == 0 ]) /= 0
                then False
                else True
