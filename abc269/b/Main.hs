import Control.Monad (replicateM)
main :: IO ()
main = do

  ss <- replicateM 10 getLine :: IO [String]

  let idx = [(x,y)| x<-[1..10],y<-[1..10]]
  let ss' = zip idx $ concat ss
  let ss'' = map fst $ filter (\(i,v) -> v=='#') ss'

  putStrLn $ unwords [show $ minimum $ map fst ss'', show $ maximum $ map fst ss'']
  putStrLn $ unwords [show $ minimum $ map snd ss'', show $ maximum $ map snd ss'']




