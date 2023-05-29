import Control.Monad (replicateM)
main :: IO ()
main = do

  [h,w] <- map read . words <$> getLine :: IO [Int]
  ss <- replicateM h getLine

  let ss' = map (map (:[])) ss
  let ss'' = map solve ss'
  mapM_ putStrLn ss''

solve [] = []
solve [s1] = s1
solve (s1:s2:ss) = if s1 == s2 && s1 == "T" then "PC" ++ solve ss else s1 ++ solve (s2:ss)
