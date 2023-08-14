import Control.Monad (replicateM)
import Data.List.Extra (minimumOn)
main :: IO ()
main = do
  n <- readLn :: IO Int
  cs <- replicateM n $ do
    _ <- readLn :: IO Int
    map read . words <$> getLine :: IO [Int]
  x <- readLn :: IO Int

  let cs' = zip [1..] cs
  let cs'' = map (\cs -> (fst cs, length $ snd cs)) $ filter (\cs -> x `elem` snd cs) cs'
  let min = if null cs'' then 0 else snd $ minimumOn snd cs''
  let cs''' = map fst $ filter (\cs -> snd cs == min) cs''

  print $ length cs'''
  putStrLn $ unwords $ map show cs'''

