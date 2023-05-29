{-# LANGUAGE TupleSections #-}

import qualified Data.IntSet as IS
import qualified Data.IntMap.Strict as IM
import Control.Monad (replicateM)
import Data.Maybe (fromMaybe)

main :: IO ()
main = do

  [h,w] <- map read . words <$> getLine :: IO [Int]
  ss <- replicateM h getLine

  let candicates = concatMap (candidates ss w) [0..1]
  print candicates
  -- [((1,1),"vgxgp"),((2,1),"amkxk"),((3,1),"zhkbp"),((4,1),"hykin"),((5,1),"esnuk"),((6,1),"zplvf")
  -- ,((1,2),"gxgpu"),((2,2),"mkxks"),((3,2),"hkbpp"),((4,2),"ykink"),((5,2),"snuke"),((6,2),"plvfj")]

  let result = fst $ head $ filter (\(i,s) -> s == "snuke") candicates
  print result
  -- [((5,2),"snuke")]

  let plots = map (fst result,) [(snd result)..(snd result + 4)]
  print plots
  -- [(5,2),(5,3),(5,4),(5,5),(5,6)]


candidates ss w i = zip (map (,i+1) [1..w]) (map (drop i . take (w+i-1)) ss)

