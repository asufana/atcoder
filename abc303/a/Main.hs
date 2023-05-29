import Data.List (sort)
main :: IO ()
main = do

  n <- readLn :: IO Int
  s <- getLine :: IO String
  t <- getLine :: IO String

  let st = zip (map (:[]) s) (map (:[]) t)
  let st' = map solve st
  putStrLn $ if length (filter id st') == n then "Yes" else "No"

solve (x,y) = x == y || sort (x++y) == "1l" || sort (x++y) == "0o"