member :: [[Int]] -> Int -> Bool
member [[]] _ = False
member [] _ = False
member (x:xs) n = if (head x) == n then True else member xs n

keepInside' :: [[Int]] -> (Int -> Int) -> [[Int]] 
keepInside' [[]] _ = []
keepInside' [] _ = []
keepInside' list f = if (length t) == (length list) then [t]
			else []
			where t= [(head x) | x <- list, member list (f (head x))]

keepInside :: [[Int]] -> (Int -> Int) -> [[Int]] 
keepInside [[]] _ = []
keepInside [] _ = []
keepInside list  f = (keepInside' (map (\x -> take 1 x) list)  f) ++ (keepInside (map (\x -> drop 1 x) list) f)
