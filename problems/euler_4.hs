-- euler_4.hs - Project Euler Problem 4
import Data.List

is_palindrome :: String -> Bool
is_palindrome s = if s == reverse s
                  then True
                  else False

-- Experimental formatting
main = putStrLn
        (show
            (last
                (sort
                    -- Check out my multi-line list comprehension!
                    [
                        x * y |
                            x <- [100..999],
                            y <- [109..999],
                            is_palindrome (show (x * y))
                    ]
                )
            )
        )
