main :: IO ()
main = do

  n <- readLn :: IO Int

  print $ snd $ divMod n 998244353

