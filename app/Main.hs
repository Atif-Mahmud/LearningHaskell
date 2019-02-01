module Main where

import Lib
import Sorting

main :: IO ()
main = print (quicksort (take 10000 [1000000,999999..]))
