main :: IO ()
main = do

  [x,k] <- map read . words <$> getLine :: IO [Int]
  let idx = [10^x| x<-[1..k]]
  print $ foldl fCalc x idx

fCalc acc n = acc + fDiff acc n
fDiff x n = if m > 4 * (n `div` 10) then n - m else - m
  where m = x `mod` n


