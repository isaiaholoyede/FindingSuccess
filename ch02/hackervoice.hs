import Data.Char(toLower)

-- Substitute character
substituteChar :: Char -> Char
substituteChar c = 
    case c of
        'e' -> '3'
        'a' -> '4'
        'o' -> '0'
        't' -> '7'
        _   -> c

-- translate word
translateWord :: String -> String
translateWord = map (substituteChar . toLower)

main :: IO ()
main = do
    putStr "Please enter a word.\n> "
    word <- getLine
    print (translateWord word)