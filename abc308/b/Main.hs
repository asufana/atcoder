import qualified Data.Map.Strict as DM
main :: IO ()
main = do

  [n,m] <- map read . words <$> getLine :: IO [Int]
  cs <- words <$> getLine :: IO [String]
  ds <- words <$> getLine :: IO [String]
  ps <- map read . words <$> getLine :: IO [Int]
  let price = DM.fromList $ zip ds $ drop 1 ps

  print $ sum $ map (\c -> DM.findWithDefault (head ps) c price) cs
