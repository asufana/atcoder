import Control.Monad (replicateM)
import Data.List (sort)
main :: IO ()
main = do

  [n,k] <- map read . words <$> getLine :: IO [Int]
  ss <- replicateM n getLine :: IO [String]

  mapM_ putStrLn $ sort $ take k ss

