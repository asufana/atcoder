import Data.List (group)
main :: IO ()
main = do

  ss <- getLine :: IO String
  let ss' = map (:[]) ss

  putStrLn $ if fSolve1 ss && fSolve2 ss then "Yes" else "No"

fSolve1 ss = head ss == '0'
fSolve2 ss = f >= 3
  where f = length . dropWhile not $ map head $ group $ fSolve3 ss
fSolve3 ss = [ss!!6=='1']++[ss!!3=='1']++[ss!!1=='1'||ss!!7=='1']++[ss!!4=='1']++[ss!!2=='1'||ss!!8=='1']++[ss!!5=='1']++[ss!!9=='1']
