{-# LANGUAGE TupleSections #-}

import qualified Data.IntSet as IS
import qualified Data.IntMap.Strict as IM
import Control.Monad (replicateM)
import Data.Maybe (fromMaybe)

main :: IO ()
main = do

  [a,b,c] <- map read . words <$> getLine :: IO [Int]
  print [a,b,c]

