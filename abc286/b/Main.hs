main :: IO ()
main = do

  getLine
  s <- getLine :: IO String

  putStrLn $ fSolve $ map (:[]) s

fSolve [] = []
fSolve [s1] = s1
fSolve (s1:s2:ss) = if s1++s2 == "na" then "nya" ++ fSolve ss else s1 ++ fSolve (s2:ss)


