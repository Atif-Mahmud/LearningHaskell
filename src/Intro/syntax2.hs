-- * Pattern Matching
lucky :: (Integral a) => a -> String
lucky 7 = "WOOT!"
lucky x = ":("

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

xs = [(1,3), (4,3), (2,4), (5,3), (5,6), (3,1)]
out' x = [a + b | (a, b) <- x]

head' :: [a] -> a
head' [] = error "Can't call head on an empty list"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell [x] = "The list has one element: " ++ show x
tell [x, y] = "The list has two elements: " ++ show x ++ show y
tell (x:y:_) = "The list is long: " ++ show x ++ show y

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- As Patterns example
capital :: String -> String
capital "" = "Empty string, uh oh!"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]