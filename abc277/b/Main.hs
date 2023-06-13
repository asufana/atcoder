import Control.Monad (replicateM)
import Data.List (group,sort,nub)
main :: IO ()
main = do

  n <- readLn :: IO Int
  ss <- replicateM n getLine :: IO [String]

  let ret = all fFirstChar ss && all fSecondChar ss && fSameChar ss n
  putStrLn $ if ret then "Yes" else "No"

fFirstChar ss = head ss `elem` "HDCS"
fSecondChar ss = last ss `elem` "A23456789TJQK"
fSameChar ss n = n == length (nub ss)
