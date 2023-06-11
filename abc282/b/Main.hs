import Control.Monad (replicateM)
main :: IO ()
main = do

  [n,m] <- map read . words <$> getLine :: IO [Int]
  ss <- replicateM n getLine :: IO [String]

  let pair = [(x,y)| x<-[1..n],y<-[1..n],x<y]
  print $ length $ filter id $ map (\(x,y) -> fSolve (ss!!(x-1)) (ss!!(y-1))) pair

fSolve ss1 ss2 = length f == length ss1
  where m = map (\(x,y) -> x=='o'||y=='o') $ zip ss1 ss2
        f = filter id m
