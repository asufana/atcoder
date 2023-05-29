import Control.Monad (replicateM)
main :: IO ()
main = do

  [n,m] <- map read . words <$> getLine :: IO [Int]
  ss <- replicateM n getLine :: IO [String]
  ts <- replicateM m getLine :: IO [String]

  let ts' = map (solve ts) ss
  print $ length $ filter id ts'

solve ts s = ts'
  where s' = reverse $ take 3 (reverse s)
        ts' = s' `elem` ts
