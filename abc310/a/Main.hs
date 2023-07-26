main :: IO ()
main = do

  [n,p,q] <- map read . words <$> getLine :: IO [Int]
  ds <- map read . words <$> getLine :: IO [Int]

  let q' = minimum ds + q
  print $ min p q'