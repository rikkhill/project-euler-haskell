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

-- One for when we need the integer and 1 as its factors as well
all_factors :: Int -> [Int]
all_factors n = [1] ++ (factors n) ++ [n]

-- Primacy of an integer
-- Hacky short-circuiting looks ugly but should be faster
is_prime :: Int -> Bool
is_prime n = if (n /= 2 && mod n 2 == 0)
                || (length [x | x <-[3,5..(max (ceiling(sqrt(fromIntegral n))) 6)], mod n x == 0 ]) /= 0 && notElem n [3,5] -- (ugh!)
                then False
                else True

-- Prime factors, then...
prime_factors :: Int -> [Int]
prime_factors n = [x | x <- factors n, is_prime x]


-- So it turns out that HCF and LCM are already in Prelude as gcf and lcm
-- I'll be using those because they're presumably more highly optimised than
-- mine, but I'll keep the functions here for reference

-- Highest Common Factor
hcf :: [Int] -> Int
hcf xs = last (sort (foldl1 intersect (map (\x -> all_factors x) xs)))

-- Lowest Common Multiple

-- Intermediary function to reduce over
lcm_reducer :: Int -> Int -> Int
lcm_reducer a b = round(num / div)
    where
    num = fromIntegral (a * b)
    div = fromIntegral (hcf [a,b])

lcmi :: [Int] -> Int
lcmi xs = foldl1 lcm_reducer xs
