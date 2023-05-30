main :: IO ()
main = do

  [n,t] <- map read . words <$> getLine :: IO [Int]
  cs <- map read . words <$> getLine :: IO [Int]
  rs <- map read . words <$> getLine :: IO [Int]

  let color = if t `elem` cs then t else head cs
  let pickup = maximum $ filter (\(c,n) -> c==color) $ zip cs rs
  let num = fst $ head $ filter (\(i,x) -> pickup==x) $ zip [1..n] $ zip cs rs
  print num

  print $ zip3 [1..n] cs rs