main :: IO ()
main = do

  n <- readLn :: IO Int
  ps <- map read . words <$> getLine :: IO [Int]

  let ps' = ps++[n]
  print $ fst $ fSolves (0,ps')

fSolves (i,ps) = if null ps' then (i,ps) else fSolves (j,ps')
  where (j,ps') = fSolve (i,ps)

fSolve (i,ps) = (i+1,ps')
  where ps' = take (n-1) ps
        n = last ps


