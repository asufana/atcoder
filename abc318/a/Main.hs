import qualified Data.ByteString.Char8 as BS
import Data.Char (isSpace)
import Data.List.Extra

getInts :: IO [Int]
getInts = unfoldr (BS.readInt . BS.dropWhile isSpace) <$> BS.getLine

main :: IO ()
main = do

  [n,m,p] <- getInts
  print $ length [m,m+p..n]