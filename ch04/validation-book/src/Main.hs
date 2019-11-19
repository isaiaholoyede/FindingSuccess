module Main where

import Data.Char

checkPasswordLength :: String -> Maybe String
checkPasswordLength password =
  if length password < 10 || length password > 20 
  then Nothing 
  else Just password

requireAlphaNum :: String -> Maybe String
requireAlphaNum xs = 
  if all isAlphaNum xs 
  then Just xs 
  else Nothing

cleanWhitespace :: String -> Maybe String
cleanWhitespace "" = Nothing
cleanWhitespace (x : xs) = 
  if isSpace x 
  then cleanWhitespace xs 
  else Just (x : xs)

validatePassword :: String -> Maybe String
validatePassword password = 
    case cleanWhitespace password of 
        Nothing -> Nothing
        Just password2 -> 
          case requireAlphaNum password2 of
            Nothing -> Nothing
            Just password3 -> checkPasswordLength password3

main :: IO ()
main = do
  putStr "Please enter a password.\n> "
  password <- getLine
  print (cleanWhitespace password)

