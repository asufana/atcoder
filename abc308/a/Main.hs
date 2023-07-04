main :: IO ()
main = do

  ss <- map read . words <$> getLine :: IO [Int]
  let ss' = zip ss $ drop 1 ss
  putStrLn $ if all fSolve1 ss' && all fSolve2 ss && all fSolve3 ss then "Yes" else "No"


fSolve1 (s1,s2) = s1 <= s2
fSolve2 s = s >= 100 && s <= 675
fSolve3 s = s `mod` 25 == 0

