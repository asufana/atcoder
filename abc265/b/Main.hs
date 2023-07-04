import Control.Monad.List (replicateM)
import Data.Maybe (fromMaybe)
import qualified Data.IntMap.Strict as IM

main :: IO ()
main = do

  [n,m,t] <- map read . words <$> getLine :: IO [Int]
  as <- map read . words <$> getLine :: IO [Int]
  xys <- replicateM m $ map read . words <$> getLine :: IO [[Int]]

  let xys' = map (\[x,y] -> (x,y)) xys
  let xys'' = IM.fromList xys'
  let as' = zip [2..] as

  let (_,ava,_) = foldl fSolve (t,True,xys'') as'
  putStrLn $ if ava then "Yes" else "No"

fSolve (acc,ava,xys) (i,n) = if not ava
  then (acc,ava,xys)
  else (acc - n + IM.findWithDefault 0 i xys,acc - n > 0,xys)

  -- これだとタイムアウト
  -- let xys' = map (\[x,y] -> (x,y)) xys
-- fSolve (acc,ava,xys) (i,n) = if not ava
--   then (acc,ava,xys)
--   else (acc - n + fromMaybe 0 (lookup i xys),acc - n > 0,xys)
