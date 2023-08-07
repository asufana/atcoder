import Control.Monad (replicateM)
main :: IO ()
main = do

  [n,x] <- map read . words <$> getLine :: IO [Int]

  let s = concatMap (replicate n) ['A'..'Z']
  putStrLn [last $ take x s]
