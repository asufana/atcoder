import Control.Monad (replicateM)
main :: IO ()
main = do

  t <- readLn :: IO Int
  as <- replicateM t (replicateM 2 $ map read . words <$> getLine :: IO [[Int]])

  let as' = map (\[_,ts] -> length $ filter id $ map odd ts) as
  mapM_ print as'

