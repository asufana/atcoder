main :: IO ()
main = do

  n <- readLn :: IO Int
  as <- map read . words <$> getLine :: IO [Int]
  putStrLn $ unwords $ map show $ fSolve as

fSolve [] = []
fSolve as = sum as1 : fSolve ass
  where (as1,ass) = splitAt 7 as