import qualified Data.Map.Strict as DM
main :: IO ()
main = do

  [n,m] <- map read . words <$> getLine :: IO [Int]
  ds <- words <$> getLine :: IO [String]
  cs <- words <$> getLine :: IO [String]
  ps <- map read . words <$> getLine :: IO [Int]

  let csps = DM.fromList $ zip cs $ drop 1 ps
  let defaultPrice = head ps
  print $ sum $ map (\d -> DM.findWithDefault defaultPrice d csps) ds

