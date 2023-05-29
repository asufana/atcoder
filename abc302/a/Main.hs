main :: IO ()
main = do

  [a,b] <- map read . words <$> getLine :: IO [Int]

  let m = a `mod` b
  let d = a `div` b
  print $ if m == 0 then d else d + 1

