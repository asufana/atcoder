{-# LANGUAGE TupleSections #-}
import qualified Data.IntMap.Strict as IM
import Control.Monad.List (replicateM, replicateM_)
import Data.Maybe (fromMaybe)
main :: IO ()
main = do

  [n,q] <- map read . words <$> getLine :: IO [Int]
  qa <- replicateM q $ map read . words <$> getLine :: IO [[Int]]

  let acc = IM.fromAscList $ map (,0) [1..n]
  let (ret,_) = foldl fSolve ([],acc) qa
  mapM_ putStrLn $ map (\x -> if x then "Yes" else "No")  ret

fSolve (ret,acc) [e,x]
  | e == 1 = (ret,IM.adjust (+1) x acc)
  | e == 2 = (ret,IM.adjust (+2) x acc)
  | otherwise = if f then (ret++[True],acc) else (ret++[False],acc)
      where f = fromMaybe 0 (IM.lookup x acc) > 1


