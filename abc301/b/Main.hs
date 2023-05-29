main :: IO ()
main = do

  n <- readLn :: IO Int
  as <- map read . words <$> getLine :: IO [Int]

  putStrLn $ unwords $ map show $ foldl solve [] as

solve acc a
  | null acc = [a]
  | last acc + 1 == a || last acc -1 == a = acc++[a]
  | otherwise = acc ++ fill (last acc) a

fill a1 a2
  | a1 < a2 = [a1+1..a2]
  | otherwise = [a1-1,a1-2..a2]


  -- putStrLn $ unwords $ map show $ solve as
-- solve :: [Int] -> [Int]
-- solve [a1,a2]
--   | a1+1==a2 || a1-1==a2 = [a1,a2]
--   | otherwise = fill a1 a2
-- solve (a1:a2:as)
--   | a1+1==a2 || a1-1==a2 = a1 : solve (a2:as)
--   | otherwise = fill a1 a2 ++ solve (a2:as)

-- fill a1 a2
--   | a1 < a2 = [a1..a2-1]
--   | otherwise = [a1,a1-1..a2+1]
