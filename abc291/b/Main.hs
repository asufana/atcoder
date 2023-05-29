import Data.List (sort)
main :: IO ()
main = do

  n <- readLn :: IO Int
  xs <- map read . words <$> getLine :: IO [Int]

  let xs' = drop n $ take (5 * n - n) $ sort xs
  let len = fromIntegral $ length xs'
  let sm = fromIntegral $ sum xs'
  print $ sm / len
  

