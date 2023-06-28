import Control.Monad (replicateM)
import Data.List (transpose)
main :: IO ()
main = do

  n <- readLn :: IO Int
  as <- replicateM n getLine :: IO [String]

  let as' = zip (fChar as) (fChar (transpose as))
  putStrLn $ if all fValid as' then "correct" else "incorrect"


fChar = concatMap (map (:[]))
fValid (x,y) = (x=="-"&&y=="-")||(x=="D"&&y=="D")||(x=="W"&&y=="L")||(x=="L"&&y=="W")