main :: IO ()
main = do

  [p,q] <- words <$> getLine :: IO [String]

  let idx = zip ['A'..'G'] $ scanl (+) 0 [3,1,4,1,5,9]
  let Just p' = lookup (head p) idx
  let Just q' = lookup (head q) idx
  print $ abs (p' - q')