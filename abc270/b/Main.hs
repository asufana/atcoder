import qualified Data.ByteString.Char8 as BS
import Data.Char (isSpace)
import Data.List (unfoldr)

getInts = unfoldr (BS.readInt . BS.dropWhile isSpace) <$> BS.getLine :: IO [Int]

main :: IO ()
main = do

  [x,y,z] <- getInts
  print $ fSolve x y z

fSolve x y z
  | x > 0 && y > 0 && x < y = abs x
  | x < 0 && y < 0 && x > y = abs x
  | x > 0 && y < 0 = abs x
  | x < 0 && y > 0 = abs x
  | y > 0 && z > 0 && z < y = abs x
  | y < 0 && z < 0 && z > y = abs x
  | y > 0 && z < 0 = (abs z * 2) + abs x
  | y < 0 && z > 0 = (abs z * 2) + abs x
  | otherwise = -1