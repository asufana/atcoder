import qualified Data.ByteString.Char8 as BS
import Data.Char (isSpace)
import Data.List.Extra

getInts :: IO [Int]
getInts = unfoldr (BS.readInt . BS.dropWhile isSpace) <$> BS.getLine

main :: IO ()
main = do
  n <- readLn :: IO Int

  let pinum = "3.14159265358979323846264338327950288419716939937510582097494459230781640628620899862803482534211706798214808651328230664"
  putStrLn $ take (n + 2) pinum

 