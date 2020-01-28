-- Define a noop main to appease ALE linter
main :: IO ()
main = return ()

-- Believe The Type
-- ================

removeNonUppercase :: String -> String
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z'] ]

-- If you're not sure how to type a function, write it w/o types
-- and then use :t in ghci to check the inferred type

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

-- Common Types
-- Int --> Integer, max: 2147483647
-- Integer --> Integer, unbounded
-- Float
-- Double
-- Bool
-- Char
-- String --> [Char]

intFactorial :: Integer -> Integer
intFactorial n = product [1..n]

-- Type Variables
-- ==============
{-
 ghci> :t head
 head :: [a] -> a

 `a` is a type variable, since a list can hold any type
 Polymorphic function -- a function that has type variables

 ghci> :t fst
 fst :: (a, b) -> a
 a and b can be the same type, but fst is typed this way so the
 pair can contain up to 2 distinct types
-}

-- Typeclasses 101
-- ===============
-- A type class is an interface that defines some behavior
-- Not an OOP style class, closer to Java Interfact (but better)

{-
 ghci> :t (==)
 (==) :: (Eq a) => a -> a -> Bool

 Everything before the `=>` is a "class constraint"
 This type reads as:
    The equality function takes any two values that are the same type and returns a Bool.
    The type of those two values must be a member of the `Eq` class.

-}





