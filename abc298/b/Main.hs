import Control.Monad (replicateM)
import Data.List (transpose)
main :: IO ()
main = do

  n <- readLn :: IO Int
  as <- replicateM n $ map read . words <$> getLine :: IO [[Int]]
  bs <- replicateM n $ map read . words <$> getLine :: IO [[Int]]

  let ass = map (rotate as) [0..3]
  putStrLn $ if any (judge n bs) ass then "Yes" else "No"

rotate as n = iterate (reverse . transpose) as !! n

judge n bs as = f == n*n
  where f = length $ filter id $ concatMap (map (\(x,y) -> if x==1&&y==0 then False else True)) $ map (\(x,y) -> zip x y) $ zip as bs
