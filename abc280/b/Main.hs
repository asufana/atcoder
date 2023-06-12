main :: IO ()
main = do

  n <- readLn :: IO Int
  ss <- map read . words <$> getLine :: IO [Int]

  putStrLn $ unwords $ map show $ foldl fSolve [] ss

fSolve acc s
  | null acc = [s]
  | otherwise = acc++[s - sum acc]

