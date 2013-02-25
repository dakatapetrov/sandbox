member :: [Int] -> Int -> Bool
member [] _ = False
member (x:xs) n = if x == n then True else member xs n

sumUnique' :: [Int] -> Int
sumUnique' [] = 0
sumUnique' (x:xs) = if not (member xs x) then x + (sumUnique' (filter (/=x) xs)) else sumUnique' (filter (/= x) xs)

sumUnique :: [[Int]] -> Int
sumUnique [] = 0
sumUnique (x:xs) = (sumUnique' x) + (sumUnique xs)
