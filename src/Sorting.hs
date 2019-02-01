module Sorting
    ( quicksort
    ) where

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = [];
quicksort (x:xs) =
    quicksort [a | a <- xs, a <= x] ++ [x] ++ [a | a <- xs, a > x]