module Main where
main :: IO ()
main = do

  y <- readLn :: IO Int
  let m = y `mod` 4
  print $ y + f m

f x
  | x == 0 = 2
  | x == 1 = 1
  | x == 2 = 0
  | otherwise = 3