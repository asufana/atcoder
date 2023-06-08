main :: IO ()
main = do

  [n,k] <- map read . words <$> getLine :: IO [Int]
  ss <- getLine

  let (acc,_) = foldl fSolve ([],k) ss
  putStrLn acc

fSolve (acc,k) s
  | k == 0 = (acc++['x'],k)
  | s == 'x' = (acc++['x'],k)
  | otherwise = (acc++['o'],k-1)
