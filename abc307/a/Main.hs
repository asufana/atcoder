main :: IO ()
main = do

  n <- readLn :: IO Int
  as <- map read . words <$> getLine :: IO [Int ]

  putStrLn $ unwords $ map show $ fSolve as

fSolve :: [Int] -> [Int]
fSolve [] = []
fSolve (a1:a2:a3:a4:a5:a6:a7:as) = (a1+a2+a3+a4+a5+a6+a7) : fSolve as

