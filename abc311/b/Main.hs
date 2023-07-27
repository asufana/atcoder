import Control.Monad (replicateM)
import Data.List (transpose)
import Data.List.Extra (group)
main :: IO ()
main = do

  [n,d] <- map read . words <$> getLine :: IO [Int]
  ss <- replicateM n getLine :: IO [String]

  let idx = map (\s -> 'x' `elem` s) $ transpose ss
  let idx' = map length $ filter (\x -> False `elem` x) $ group idx
  print $ if null idx' then 0 else maximum idx'
