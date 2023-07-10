import Control.Monad (replicateM)
import Data.List (sort)
import Data.Array (accumArray)
import Data.Array.Base (elems)
main :: IO ()
main = do

  [n,m] <- map read . words <$> getLine :: IO [Int]
  abs <- replicateM m $ map read . words <$> getLine :: IO [[Int]]

  let abs' = concatMap (\[a,b] -> [(a,b),(b,a)]) abs
  let abs'' = accumArray (flip (:)) [] (1,n) abs'
  let abs''' = [length as : sort as | as <- elems abs'']
  mapM_ (putStrLn . unwords . map show) abs'''

