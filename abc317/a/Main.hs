import qualified Data.ByteString.Char8 as BS
import Data.Char (isSpace)
import Data.List.Extra

getInts :: IO [Int]
getInts = unfoldr (BS.readInt . BS.dropWhile isSpace) <$> BS.getLine
 
main :: IO ()
main = do

  [_,h,x] <- getInts
  ps <- getInts

  -- 内包表記
  -- print $ succ $ length [v|v<-ps,v<=(x-h)]

  -- takeWhile
  print $ succ $ length $ takeWhile (x-h >) ps
