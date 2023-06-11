import Control.Monad (replicateM)
import Data.Array.IO
main = do

  n <- readLn :: IO Int
  as  <- map read . words <$> getLine :: IO [Int]
  q <- readLn :: IO Int

  arr <- newListArray (1,n) as :: IO (IOArray Int Int)
  replicateM q $ do
    qs <- map read . words <$> getLine :: IO [Int]
    case qs of
     [1,k,x] -> writeArray arr k x
     [2,k] -> readArray arr k >>= print


-- fSolve (acc,as) qs
--   | isQuery = (acc++[as!!(last qs-1)],as)
--   | otherwise = (acc,fReplace as (qs!!1) (qs!!2))
--   where isQuery = head qs == 2
-- fReplace as n v = take (n-1) as ++ [v] ++ drop n as
