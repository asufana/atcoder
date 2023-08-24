main :: IO ()
main = do
  _ <- readLn :: IO Int
  ds <- map read . words <$> getLine :: IO [Int]

  let days = (sum ds + 1) `div` 2
  let acc = foldl fSolve [days, 1, 1] ds
  putStrLn $ unwords $ map show $ drop 1 acc

fSolve [count, month, day] n
  | count > 0 && count > n = [count - n, month + 1, day]
  | count > 0 = [0, month, count]
  | otherwise = [count, month, day]
  
