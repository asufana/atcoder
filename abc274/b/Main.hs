import Control.Monad (replicateM)
import Control.Monad.List (join)
import Data.List (transpose)
main :: IO ()
main = do

  [h,w] <- map read . words <$> getLine :: IO [Int]
  cs <- replicateM h getLine :: IO [String]

  putStrLn $ unwords $ map show $ map (length . filter (=='#')) $ transpose cs


