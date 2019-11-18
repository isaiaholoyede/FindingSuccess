import Data.Char
import Data.List

-- The palindrome checker
isPalindrome :: String -> Bool
isPalindrome xs = xs == reverse xs

-- The word validator
isWord :: String -> Maybe String
isWord word = case filter isAlpha word of
    [] -> Nothing
    word ->  Just (map toLower word)

-- Validate first, then compare
checkPalindrome :: String -> String
checkPalindrome word = 
    case isWord word of 
        Nothing -> "This word is invalid."
        Just word -> 
            if isPalindrome word
            then "This word is a palindrome."
            else "This word is not a palindrome."

main :: IO ()
main = do
    putStr "Please enter a word.\n> "
    word <- getLine
    print (checkPalindrome word)
