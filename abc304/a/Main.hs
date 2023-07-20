import Control.Monad (replicateM)
import Data.List (sort, minimumBy, elemIndex)
import Data.Ord (comparing)
import Data.Maybe (fromJust)
main :: IO ()
main = do

  n <- readLn :: IO Int
  sa <- replicateM n $ do
    [s,a] <- words <$> getLine
    return (s, read a :: Int)

  let min = minimumBy (comparing snd) sa
  let idx = fromJust $ elemIndex min sa

  mapM_ putStrLn $ map fst $ drop idx sa ++ take idx sa