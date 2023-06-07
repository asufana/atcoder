main :: IO ()
main = do

  n <- getLine :: IO String
  putStrLn $ fOutput n

fOutput n
  | length n > 8 = take 3 n ++ "000000"
  | length n > 7 = take 3 n ++ "00000"
  | length n > 6 = take 3 n ++ "0000"
  | length n > 5 = take 3 n ++ "000"
  | length n > 4 = take 3 n ++ "00"
  | length n > 3 = take 3 n ++ "0"
  | otherwise = n

