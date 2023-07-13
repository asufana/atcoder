main :: IO ()
main = do

  [a,b] <- map read . words <$> getLine :: IO [Int]
  putStrLn $ if fSolves a b then "Yes" else "No"

fSolves m n = fSolve m == fSolve n
fSolve n = (n-1) `div` 3