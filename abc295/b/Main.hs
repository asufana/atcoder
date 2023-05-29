module Main where
import Control.Monad (replicateM, join)
import Data.Char (isNumber)
import Data.List (sort, nub)
main :: IO ()
main = do

  [r,c] <- map read . words <$> getLine :: IO [Int]
  bs <- replicateM r getLine

  let coo = coordinates r c
  -- [(1,1),(1,2),(1,3),(1,4),(2,1),(2,2),(2,3),(2,4),(3,1),(3,2),(3,3),(3,4),(4,1),(4,2),(4,3),(4,4)]

  let bs' = toChars bs
  -- [".","1",".","#","#","#","#",".",".","#","2",".","#",".","#","#"]

  let bs'' = zip coo bs'
  -- [((1,1),"."),((1,2),"1"),((1,3),"."),((1,4),"#"),((2,1),"#"),((2,2),"#"),((2,3),"#"),((2,4),"."),((3,1),"."),((3,2),"#"),((3,3),"2"),((3,4),"."),((4,1),"#"),((4,2),"."),((4,3),"#"),((4,4),"#")]

  let bombs = map (\(t,n) -> (t,read n::Int)) $ filter (\(_,v) -> v/="." && v/="#") bs''
  -- [((1,2),1),((3,3),2)]

  let effects = nub $ sort $ concatMap (\((y,x),n) -> [(h, w) |
                                            h <- [y - n .. y + n],
                                            h > 0 && h <= r,
                                            w <- [x - n .. x + n],
                                            w > 0 && w <= c,
                                            abs (h-y)+abs (w-x)<=n]) bombs
  -- [(1,1),(1,2),(1,3),(2,2),(2,3),(2,4),(3,1),(3,2),(3,3),(3,4),(4,2),(4,3),(4,4)]

  let bombed = map (\(t,v) -> if t `elem` effects then "." else if v=="#" then "#" else ".") bs''
  -- [".",".",".","#","#",".",".",".",".",".",".",".","#",".",".","."]

  printLine c bombed

coordinates :: (Num b, Num a, Enum b, Enum a) => a -> Int -> [(a, b)]
coordinates h w = concatMap (\x -> zip x [1..]) $ concatMap (\x -> replicateM w [x]) [1..h]

toChars = concatMap (map (:[]))

printLine :: Int -> [String] -> IO ()
printLine n [] = return ()
printLine n xs = do
  putStrLn $ join $ take n xs
  printLine n $ drop n xs
