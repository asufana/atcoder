import Control.Monad (replicateM)
import qualified Data.IntSet as IS
import qualified Control.Monad.Trans.RWS as IS
main :: IO ()
main = do

  [n,m] <- map read . words <$> getLine :: IO [Int]
  abs <- replicateM m $ map read . words <$> getLine :: IO [[Int]]

  let acc = IS.fromAscList [1..n]
  let acc' = foldl fSolve acc abs
  let acc'' = IS.toList acc'

  print $ if length acc'' == 1 then head acc'' else -1

fSolve :: IS.IntSet -> [IS.Key] -> IS.IntSet
fSolve acc [x,y] = deleteY
  where deleteY = IS.delete y acc
 