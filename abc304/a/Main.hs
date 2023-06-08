import Control.Monad (replicateM)
import Data.Ord (comparing)
import Data.List (minimumBy)
import Data.Maybe (fromMaybe)
main :: IO ()
main = do

  n <- readLn :: IO Int
  ss <- replicateM n $ do
    [s,a] <- words <$> getLine
    return (s, read a::Int)

  let m = snd $ minimumBy (comparing snd) ss
  let i = fLookup ss m
  let ss' = map fst $ drop (i-1) ss ++ take (i-1) ss
  mapM_ putStrLn ss'

fLookup ss x = fromMaybe 0 $ lookup x ss'
  where ss' = zip (map snd ss) [1..]