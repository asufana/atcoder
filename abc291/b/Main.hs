import Data.List (sort)
main :: IO ()
main = do

  n <- readLn :: IO Int
  xs <- map read . words <$> getLine :: IO [Int]

  let xs' = take (5*n-n-n) $ reverse $ take (5*n-n) $ sort xs
  let s = fromIntegral $ sum xs'
  let d = fromIntegral $ length xs'
  print $ s / d


