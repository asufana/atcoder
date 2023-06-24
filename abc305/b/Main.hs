main :: IO ()
main = do

  p:_:q:_ <- getLine :: IO [Char]

  let idx = zip "ABCDEFG" (scanl (+) 0 [3,1,4,1,5,9])
  let Just x = lookup p idx
  let Just y = lookup q idx
  print $ abs (x - y)