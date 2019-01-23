-- * STL

succ' x = succ x
min' x y = min x y
max' x y = max x y

-- ! Note that function application has the highest precedence
-- That is the following two statements evaluate to the same
-- thing

eval = succ 9 + max 5 4 + 1
eval' = (succ 9) + (max 5 4) + 1

-- Integral division: Typically written x `div` y
divide' x y = x `div` y

-- * Function declaration:

doubleMe x = 2*x
doubleUs x y = doubleMe x + doubleMe y

-- Indenting excercise
doGuessing num = do
    putStrLn "Enter your guess:"
    guess <- getLine
    case compare (read guess) num of
      LT -> do putStrLn "Too low!"
               doGuessing num
      GT -> do putStrLn "Too high!"
               doGuessing num
      EQ -> putStrLn "You Win!"

-- I prefer this method, I'm not a fan of the auto indenting.
doGuessing' num = do {
    putStrLn " Enter your guess:";
    guess <- getLine;
    case compare (read guess) num of {
        LT -> do {
            putStrLn "Too low!";
            doGuessing num;
        };
        GT -> do {
            putStrLn "Too high!";
            doGuessing num;
        };
        EQ -> do {
            putStrLn "You Win!";
        };
    }
}

main = do {
    x <- getLine;

    doGuessing x;
    doGuessing' x;
}