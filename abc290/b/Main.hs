{-# LANGUAGE TupleSections #-}

import qualified Data.IntSet as IS
import qualified Data.IntMap.Strict as IM
import Control.Monad (replicateM)
import Data.Maybe (fromMaybe)

main :: IO ()
main = do

  [n,k] <- map read . words <$> getLine :: IO [Int]
  ss <- getLine

  let (acc,_) = foldl solve ([],k) $ map (:[]) ss
  putStrLn $ reverse acc

solve (acc,k) s
  | s == ['o'] && f = ('o':acc,k)
  | otherwise = ('x':acc,k)
  where f = length (filter (=='o') acc) < k

