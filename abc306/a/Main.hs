import Control.Monad (join)
main :: IO ()
main = do

  _ <- readLn :: IO Int
  s <- getLine :: IO String

  putStrLn $ concatMap (\c -> [c,c]) s

