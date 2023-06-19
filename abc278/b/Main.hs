main :: IO ()
main = do

  [h,m] <- map read . words <$> getLine :: IO [Int]

  let (h',m') = until fSolve fNext (h,m)
  putStrLn $ unwords [show h',show m']

fSolve (h,m) = b<=3 && c<=3
  where
    (a,b) = divMod h 10
    (c,d) = divMod m 10

fNext (23,59) = (0,0)
fNext (h,59) = (succ h,0)
fNext (h,m) = (h,succ m)