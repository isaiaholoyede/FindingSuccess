import Data.Char
import Data.List

-- 2.1 The anagram checker
isAnagram :: String -> String -> Bool
isAnagram word1 word2 = sort word1 == sort word2

-- 2.2 The word validator
isWord :: String -> Maybe String
isWord word
    | null word = Nothing
    | all isAlpha word = Just word 
    | otherwise = Nothing

-- 2.3 Validate first, then compare
checkAnagram :: String -> String -> String
checkAnagram word1 word2 = 
    case isWord word1 of 
        Nothing -> "The first word is invalid."
        Just word1 ->
            case isWord word2 of
                Nothing -> "The second word is invalid."
                Just word2 ->
                    if isAnagram word1 word2 then "These words are anagrams."
                    else "These words are not anagrams."

main :: IO ()
main = do
    putStr "Please enter a word.\n> "
    word1 <- getLine
    putStr "Please enter a second word.\n> "    
    word2 <- getLine
    print (checkAnagram word1 word2)
