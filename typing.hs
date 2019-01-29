removeNonUppercase :: String -> String -- Introduction to the type system syntax
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

addThree :: Int -> Int -> Int -> Int -- Multiple input params
addThree x y z = x + y + z

-- Common Types
-- Int: Bounded integer

-- Integer: Unbounded integer
factorial :: Integer -> Integer
factorial n = product[1..n]

-- Float: real floating point with single precision
circumference :: Float -> Float
circumference r = 2 * pi * r -- Note pi is a built-in constant

-- Double: real floating point with double precision
circumference2 :: Double -> Double
circumference2 r = 2 * pi * r

-- Bool: boolean type
-- Char: character type denoted by single quotes ''

-- Tuple: types dependent on their length and contents
-- Note: () is also a type. It only contains the empty tuple.

-- * Type Variables
-- Consider the head function, what's it's type? ":t head" returns "[a] -> a"

-- * TypeClasses
-- What is the type signature of the == function?
-- (Eq a) => a -> a -> Bool
-- Note that when passing infix functions, we must surround them with parentheses

-- Everything before "=>" is called a class constraint.

-- Eq : = /=
-- Ord: <, > , <=, >=, GT, LT, EQ
    -- compare function only works on ord members
-- Show
-- Read

-- Type Annotations are a way of explicitly specifying a type.
-- read "5" :: Int

-- Enum : (), Bool, Char, Ordering, Int, Integer, Float and Double.
-- Sequentially ordered types for list ranges

-- Bounded : Members have an upper and lower bound
-- :t minBound
-- (Bounded a) => a
-- Polymorphic constants

-- Note: Tuples are also bounded if the components in the Tuples are bounded

-- Num : Numeric type class
-- :t 20
-- 20 :: (Num t) => t
-- Also polymorphic constants
-- Num is a subclass of Show and Eq

-- Subclasses include Integral and Floating

-- fromIntegral is a usefull function
betterLen :: (Num b) => [a] -> b
beterLen x = fromIntegral(length x)