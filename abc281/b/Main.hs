import Data.Char (isNumber, isDigit, isUpper)
main :: IO ()
main = do

  s <- getLine :: IO String

  putStrLn $ if fSolve s then "Yes" else "No"

fSolve (s:ss) = isUpper s
  && length (s:ss) == 8
  && isUpper (last ss)
  && all isDigit s6
  && head s6/='0'
    where s6 = take 6 ss


