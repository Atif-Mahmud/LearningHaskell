lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"
-- Note that a catch all is crucial so that the program does not ever have
-- unintended behaviour
charName x = "Sorry, no character by that name."


-- Pattern matching can also be used on tuples. What if we wanted to make a
-- function that takes twwo vectors ina 2D space (that are in the form of pairs)
-- and adds them together? To add together two vectors, we add their x
-- components separately and then their y components separately. Here's how we
-- would have done it if we didn't know about pattern matching:

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2)  = (x1 + x2, y1 + y2)

-- Applying pattern matching against lists: Let's make our own implementation of
-- the head function.

head' :: [a] -> a
head' [] = error "Can't calll head on an empty list, dummy!"
head' (x:_) = x

-- Let's make a trivial function that tells us some of the first elements of the
-- list in (in)convenient English form

tell :: (Show a) => [a] -> String
tell [] = "This list is empty"
tell [x] = "The list has one element: " ++ show x
tell [x,y] = "The lsit has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

