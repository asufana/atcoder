main :: IO ()
main = do

  n <- readLn :: IO Int

  let (i,j) = divMod n 5
  print $ if j >= 3 then i * 5 + 5 else i * 5

