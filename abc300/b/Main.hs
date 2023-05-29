import Control.Monad (replicateM)
main :: IO ()
main = do

  [h,w] <- map read . words <$> getLine :: IO [Int]
  as <- replicateM h getLine :: IO [String]
  bs <- replicateM h getLine :: IO [String]

  let ptn = [(x,y)|x<-[0..h-1],y<-[0..w-1]]
  let as' = map (\(x,y) -> wShift y $ hShift x as) ptn

  putStrLn $ if bs `elem` as' then "Yes" else "No"

wShift n = map (\x -> drop n x ++ take n x)
hShift n as = drop n as ++ take n as

