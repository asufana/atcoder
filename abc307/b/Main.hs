import Control.Monad (replicateM)
import Data.Array (listArray)
import Data.Array.Base ((!))
main :: IO ()
main = do

  n <- readLn :: IO Int
  ss <- replicateM n getLine :: IO [String]

  let ss' = fMerge ss
  putStrLn $ if any fMatch ss' then "Yes" else "No"

fMatch s = s == reverse s
fMerge ss = [x++y | x<-ss, y<-ss, x /= y]