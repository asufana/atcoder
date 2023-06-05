module Main where
import Control.Monad (replicateM)
main :: IO ()
main = do

  [h,w] <- map read . words <$> getLine :: IO [Int]
  as <- replicateM h $ map read . words <$> getLine :: IO [[Int]]

  let as' = map (map fPickup) as
  mapM_ putStrLn as'

fPickup n = if n==0 then '.' else ['A'..'Z'] !! (n-1)
