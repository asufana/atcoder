{-# LANGUAGE TupleSections #-}

import Control.Monad (replicateM)
import qualified Data.IntMap.Strict as IM
import Data.Maybe (fromMaybe)
main :: IO ()
main = do

  [n,q] <- map read . words <$> getLine :: IO [Int]
  qa <- replicateM q $ map read . words <$> getLine :: IO [[Int]]

  let acc = IM.fromList $ map (,0) [1..n]
  let (acc', results) = foldl calc (acc, []) qa
  let results' = map (\x -> if x then "Yes" else "No") $ reverse results
  mapM_ putStrLn results'
  
calc (acc, results) [e, x]
  | e == 1 = (IM.adjust (+1) x acc, results)
  | e == 2 = (IM.adjust (+2) x acc, results)
  | otherwise = if f then (acc, True:results) else (acc, False:results)
  where f = fromMaybe 0 (IM.lookup x acc) > 1

