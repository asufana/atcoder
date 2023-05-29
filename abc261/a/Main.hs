module Main where
main :: IO ()
main = do

  [l1,r1,l2,r2] <- map read . words <$> getLine :: IO [Int]

  let reds = [l1..r1]
  let blues = [l2..r2]

  let len = length $ filter id $ map (`elem` blues) reds
  print $ if len > 0 then len -1 else len

