import Control.Monad (replicateM)
import Data.List (sort)
main :: IO ()
main = do

  [n,m] <- map read . words <$> getLine :: IO [Int]
  as <- replicateM m $ map read . words <$> getLine :: IO [[Int]]

  let as' = concatMap pair as
  let acc = [(x,y) | x<-[1..n],y<-[1..n],x/=y,x<y]
  let as'' = foldl exists acc as'
  print $ length as''


pair [] = []
pair [a1,a2] = [sortpair (a1,a2)]
pair (a1:a2:as) = sortpair (a1,a2) : pair (a2:as)
sortpair (a1,a2) = if a1 < a2 then (a1,a2) else (a2,a1)

exists acc (a1,a2)
  | (a1,a2) `elem` acc = filter (\(x1,x2) -> (a1,a2)/=(x1,x2)) acc
  | otherwise = acc