module Sorting where

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = [];
quicksort (x:xs) =
    quicksort [a | a <- xs, a <= x] ++ [x] ++ quicksort [a | a <- xs, a > x]

quicksort2 :: (Ord a) => [a] -> [a]
quicksort2 [] = []
quicksort2 (x:xs) =
    quicksort2 (filter (<=x) xs) ++ [x] ++ quicksort2 (filter (>x) xs)
