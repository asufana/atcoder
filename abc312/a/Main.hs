import Data.List (isInfixOf)
main :: IO ()
main = do

  s <- getLine :: IO String
  putStrLn $ if s `isInfixOf` "ACEGBDFAC" then "Yes" else "No"
