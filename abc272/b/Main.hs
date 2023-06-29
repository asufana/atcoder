import Control.Monad.List (replicateM)
main :: IO ()
main = do

  [n,m] <- map read . words <$> getLine :: IO [Int]
  kxs <- replicateM m $ map read . words <$> getLine :: IO [[Int]]

  let xs = map (\(_:xs) -> xs) kxs
  let idx = [(x,y)| x<-[1..n],y<-[1..n],x/=y,x<y]

  putStrLn $ if all (fCalc xs) idx then "Yes" else "No"

fCalc xs (i,j) = any has xs
  where has x = elem i x && elem j x