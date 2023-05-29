module Main where
import Control.Monad (replicateM)
main :: IO ()
main = do

  [h,w] <- map read . words <$> getLine :: IO [Int]
  as <- replicateM h $ map read . words <$> getLine :: IO [[Int]]

  let ss = map (map replaceChar) as
  mapM_ putStrLn ss

replaceChar n
  | n == 0 = '.'
  | n == 1 = 'A'
  | n == 2 = 'B'
  | n == 3 = 'C'
  | n == 4 = 'D'
  | n == 5 = 'E'
  | n == 6 = 'F'
  | n == 7 = 'G'
  | n == 8 = 'H'
  | n == 9 = 'I'
  | n == 10 = 'J'
  | n == 11 = 'K'
  | n == 12 = 'L'
  | n == 13 = 'M'
  | n == 14 = 'N'
  | n == 15 = 'O'
  | n == 16 = 'P'
  | n == 17 = 'Q'
  | n == 18 = 'R'
  | n == 19 = 'S'
  | n == 20 = 'T'
  | n == 21 = 'U'
  | n == 22 = 'V'
  | n == 23 = 'W'
  | n == 24 = 'X'
  | n == 25 = 'Y'
  | otherwise = 'Z'
