import Data.IntMap (fromList)
main :: IO ()
main = do

  n <- readLn :: IO Int
  s <- getLine :: IO String

  let idx = zip [1..] s
  print $ maximum $ map (fSolve idx) "ABC"

fSolve :: Eq a1 => [(a2, a1)] -> a1 -> a2
fSolve idx x = fst $ head $ dropWhile (\(i,v) -> v/=x) idx

