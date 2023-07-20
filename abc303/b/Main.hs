import Control.Monad.List (replicateM)
import Data.List (sort, nub)
main :: IO ()
main = do

  [n,m] <- map read . words <$> getLine :: IO [Int]
  ass <- replicateM m $ map read . words <$> getLine :: IO [[Int]]

  let whl = [(x,y)|x<-[1..n],y<-[1..n],x<y]
  let ass' = nub $ sort $ concatMap fPair ass
  print $ length $ filter not $ map (`elem` ass') whl

fPair [] = []
fPair [a1,a2]
  | a1 < a2 = [(a1,a2)]
  | otherwise = [(a2,a1)]
fPair (a1:a2:as)
  | a1 < a2 = (a1,a2) : fPair (a2:as)
  | otherwise = (a2,a1) : fPair (a2:as)


