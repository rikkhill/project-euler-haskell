-- Helper functions
-- (I don't know where this is supposed to go in my directory structure!)

module Lib.Helper where

-- All factors of an integer
-- (I don't know if this is the most efficient way of doing this)
factors :: Int -> [Int]
factors n = [x | x <-[1..n], mod n x == 0 ]

-- Primacy of an integer
-- TODO make this faster when I can figure out how to
-- get `[1..ceil sqrt n]` to not barf
is_prime :: Int -> Bool
is_prime n = if length (factors n) == 0
                then True
                else False
