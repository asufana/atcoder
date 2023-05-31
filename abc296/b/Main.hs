import Control.Monad (replicateM)
import GHC.IO.Handle (hClose)
main :: IO ()
main = do

  ss <- replicateM 8 getLine :: IO [String]

  let (h,s) = hScan ss
  let w = wScan s
  putStrLn $ w : show h

hScan ss = head f
  where z = zip [1..] $ reverse ss
        f = filter (\(i,s) -> '*' `elem` s) z
wScan ss = fst $ head f
  where z = zip ['a'..] $ map (:[]) ss
        f = filter (\(i,s) -> s=="*") z
