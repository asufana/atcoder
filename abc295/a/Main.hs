module Main where
main :: IO ()
main = do
 
  getLine
  ws <- words <$> getLine :: IO [String]
  putStrLn $ calc ws
 
calc :: [String] -> String
calc [] = "No"
calc [w1] = if fn w1 then "Yes" else "No"
calc (w1:ws) = if fn w1 then "Yes" else calc ws
 
fn :: String -> Bool
fn w1 = w1 `elem` ["and","not","that","the","you"]
