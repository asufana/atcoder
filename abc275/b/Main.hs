main :: IO ()
main = do

  [a,b,c,d,e,f] <- map read . words <$> getLine
  print $ snd $ divMod (a*b*c-d*e*f) 998244353 
