main :: IO ()
main = do
  n <- readLn :: IO Int
  (x:ps) <- map read . words <$> getLine :: IO [Int]

  let offset = if null ps then -1 else maximum ps - x
  print $ if offset >= 0 then offset + 1 else 0

