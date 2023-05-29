module Main where
import Data.List ( sort, group )
main :: IO ()
main = do

  s <- getLine

  let s' = map (:[]) s
  let s'' = filter (\x -> length x == 1) $ group $ sort s'
  putStrLn $ if null s'' then "-1" else head $ head s''

