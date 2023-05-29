main :: IO ()
main = do

  getLine
  s <- getLine :: IO String

  putStrLn $ solve $ map (:[]) s

solve [] = []
solve [n1] = n1
solve [n1,n2] = if n1++n2 == "na" then "nya" else n1++n2
solve (n1:n2:ns) = if n1++n2 == "na" then "nya" ++ solve ns else n1 ++ solve (n2:ns)

