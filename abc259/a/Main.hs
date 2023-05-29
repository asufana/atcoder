{-# LANGUAGE TupleSections #-}

import qualified Data.IntSet as IS
import qualified Data.IntMap.Strict as IM
import Control.Monad (replicateM)
import Data.Maybe (fromMaybe)

main :: IO ()
main = do

  [n,m,x,t,d] <- map read . words <$> getLine :: IO [Int]

  print $ if m >= x then t else solve m x t d

solve m x t d = diff''
  where diff = x - m
        diff' = diff * d
        diff'' = if t - diff' > 0 then t - diff' else 1

