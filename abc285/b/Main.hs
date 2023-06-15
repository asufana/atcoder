main :: IO ()
main = do

  n <- readLn :: IO Int
  s <- getLine :: IO String

  let ret = [length $ takeWhile id $ zipWith (/=) s $ drop i s | i<-[1..n-1]]
  mapM_ putStrLn $ map show ret

