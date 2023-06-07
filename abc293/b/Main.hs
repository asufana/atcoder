import qualified Data.IntSet as IS
main :: IO ()
main = do

  n <- readLn :: IO Int
  as <- map read . words <$> getLine :: IO [Int]

  let as' = zip [1..] as
  let lst = IS.fromAscList [1..n]
  let as'' = IS.elems $ foldl fPickup lst as'

  print $ length as''
  putStrLn $ unwords $ map show as''

fPickup acc (i,n)
  | IS.member i acc = IS.delete n acc
  | otherwise = acc
