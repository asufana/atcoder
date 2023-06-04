import Control.Monad.List (replicateM)
import Control.Monad (join)
import Data.List (nub)
main :: IO ()
main = do

  [r,c] <- map read . words <$> getLine :: IO [Int]
  bs <- replicateM r getLine

  let is = zip (fIndex r c) $ concatMap (map (:[])) bs
  let bombs = map (\(i,s) -> (i,read s::Int)) $ filter (\(i,s) -> s/="."&&s/="#") is
  let effects = nub $ fEffects r c bombs
  let is' = join $ map (\(i,s) -> if i `elem` effects then "." else s) is
  fPrint c is'

fEffects r c = concatMap (\((y,x),v) -> [(y',x')|
  y'<-[y-v..y+v], y'>=1, y'<=r,
  x'<-[x-v..x+v], x'>=1, x'<=c,
  abs(x-x')+abs(y-y')<=v])
fIndex h w = wLine
  where m = max h w
        hLine = concatMap (\i -> replicateM m [i]) [1..m]
        wLine = concatMap (\i -> zip i [1..w]) hLine
fPrint n [] = return ()
fPrint n ss = do
  putStrLn $ take n ss
  fPrint n $ drop n ss
