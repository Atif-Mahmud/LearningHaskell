-- Maximum awesome
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "expected non-empty list, instead got []"
maximum' [x] = x
maximum (x:xs) = max x (maximum' xs)

replicate' :: (Num i, Ord i) -> i -> a -> [a]
replicate' n x
    | n <= 0    = []
    | otherwise = x:replicate' (n-1) x

take' :: (Num i, Ord i) => i -> [a]
take' n x
    | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x:take' (n-1) xs

reverse' :: (Ord a) => [a] -> [a]
reverse [] = []
reverse [x:xs] = reverse' xs ++ x

repeat' :: a -> [a]
repeat' x = x:repeat' x

zip' :: [a] -> [b] -> [(a, b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x, y):zip' xs ys

elem' :: a -> [a] -> Bool
elem' _ [] = False
elem' x (y:ys)
    | x == y = True
    | otherwise = x `elem'` ys