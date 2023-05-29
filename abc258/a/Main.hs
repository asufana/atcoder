import Text.Printf
main :: IO ()
main = do

  k <- readLn :: IO Int

  let k' = 60 * 21 + k
  let h = k' `div` 60 
  let m = k' `mod` 60
  printf "%d:%02d\n" h m
