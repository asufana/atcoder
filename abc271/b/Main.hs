import qualified Data.ByteString.Char8 as BS
import Data.Char (isSpace)
import Data.List (unfoldr)
import Control.Monad (replicateM, replicateM_)
import Data.Array (listArray)
import Data.Array.Base ((!))
 
getInts :: IO [Int]
getInts = unfoldr (BS.readInt . BS.dropWhile isSpace) <$> BS.getLine
 
main :: IO ()
main = do
  [n,q] <- getInts

  as <- replicateM n $ do
    (i:ss) <- getInts
    return $ listArray (1,i) ss

  let as' = listArray (1,n) as

  replicateM_ q $ do
    [x,y] <- getInts
    print $ as' ! x ! y
