import Data.List
main :: IO ()
main = do

  s <- getLine :: IO String
  t <- getLine :: IO String

  let ret = t `isInfixOf` s
  putStrLn $ if ret then "Yes" else "No"
