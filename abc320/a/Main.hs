import qualified Data.ByteString.Char8 as BS
import Data.Char (isSpace)
import Data.List.Extra

getInts :: IO [Int]
getInts = unfoldr (BS.readInt . BS.dropWhile isSpace) <$> BS.getLine

main :: IO ()
main = do
  [a,b] <- getInts

  print $ a ^ b + b ^ a
 