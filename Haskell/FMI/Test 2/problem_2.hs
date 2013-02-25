member :: Int -> [Int] -> Bool
member _ [] = False
member y (x:xs) = if y == x then True else member y xs

reachable :: Int -> [[Int]] -> Int
reachable v g = length [x| (x:xs) <- g, member v xs]
