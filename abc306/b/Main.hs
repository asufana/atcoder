import qualified Data.ByteString.Char8 as BS
import Data.Char (isSpace)
import Data.List (unfoldr)

getInts = unfoldr (BS.readInt . BS.dropWhile isSpace) <$> BS.getLine :: IO [Int]

main :: IO ()
main = do

  as <- getInts
  let as' = zip as [0..]
  let as'' = map snd $ filter (\(x,i) -> x==1) as'
  print $ sum $ map (2^) as''

