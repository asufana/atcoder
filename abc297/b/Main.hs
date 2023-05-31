import Control.Monad.List (join)
main :: IO ()
main = do

  s <- getLine :: IO String

  let ss = zip [1..] $ map (:[]) s
  putStrLn $ if bCheck ss && kCheck ss then "Yes" else "No"

bCheck ss = c
  where f = filter (\(i,s) -> s=="B") ss
        m = map fst f
        c = odd $ sum m

kCheck ss = c
  where f = filter (\(i,s) -> s=="K" || s=="R") ss
        m = map snd f
        c = join m == "RKR"
