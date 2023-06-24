import Data.List (isPrefixOf)

main :: IO ()
main = do

  s <- getLine :: IO String
  t <- getLine :: IO String

  putStrLn $ if s `isPrefixOf` t then "Yes" else "No"


