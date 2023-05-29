module Main where
import qualified Data.IntSet as IS
main :: IO ()
main = do

  n <- readLn :: IO Int
  as <- map read . words <$> getLine :: IO [Int]

  let as' = zip [1..] as
  let acc = IS.fromAscList [1..n]
  let deleted = IS.elems $ foldl del acc as'
  print $ length deleted
  putStrLn $ unwords $ map show deleted

del acc (i,ai)
  | IS.member i acc = IS.delete ai acc
  | otherwise = acc

