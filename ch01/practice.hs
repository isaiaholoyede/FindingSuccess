-- 1.1 Conditionals
function :: Integer -> Integer -> Integer
function x y = if x > y then x + 10 else y

-- 1.4 Case expressions
function2 :: Integer -> Integer -> Integer
function2 x y =
    case x > y of
        False -> y
        True -> x + 10

-- Exercise 1 - Absolute Value
absVal :: (Num a, Ord a) => a -> a
absVal x = if x < 0 then negate x else x

-- Exercise 2 - (Bool, Bool)
validateUsernamePassword :: String -> String -> String
validateUsernamePassword username password = 
    case (null username, null password) of
        (False, False)  -> "Empty username and password"
        (False, True)   -> "Empty username"
        (True, False)   -> "Empty password"
        (True, True)    -> "Okay"

-- Exercise 3 - A question of types
-- safeHead :: [a] -> a
-- safeHead [] = [] ---------> (1)
-- safeHead (x:xs) = x ------> (2)
-- This will not compile because the type expects a value, not a list in (1)

-- Exercise 4 - Maybe for safety
safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail (_:xs) = Just xs

safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:_) = Just x