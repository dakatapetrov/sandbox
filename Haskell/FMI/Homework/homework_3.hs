mergeSet :: [Int] -> [Int] -> [Int]
mergeSet [] [] = []
mergeSet set1 [] = set1
mergeList [] set2 = set2
mergeList (x:xs) (y:ys) = if x <= y then [x] ++ mergeSet xs (y:ys) else [y] ++ mergeSet (x:xs) ys

contains :: [Int] -> Int -> Bool
contains [] _ = False
contains (x:xs) elem = if x == elem then True else contains xs elem

unionSet :: [Int] -> [Int] -> [Int]
unionSet (x:xs) set2 = if not (contains set2 x) then x : unionSet xs set2 else unionSet xs set2
unionSet [] (y:ys) = y : unionSet [] ys
unionSet [] [] = []

intersectionSet :: [Int] -> [Int] -> [Int]
intersectionSet [] _ = []
intersectionSet _ [] = []
intersectionSet (x:xs) set2 = if contains set2 x then x : intersectionSet xs set2 else intersectionSet xs set2

diffSet' :: [Int] -> [Int] -> [Int]
diffSet' set1 [] = set1
diffSet' [] _ = []
diffSet' (x:xs) set2 = if not (contains set2 x) then x : diffSet' xs set2 else diffSet' xs set2

diffSet :: [Int] -> [Int] -> [Int]
diffSet set1 set2 = (diffSet' set1 set2) ++ (diffSet' set2 set1)

removeDup :: [Int] -> [Int]
removeDup [] = []
removeDup (x:xs) = if not (contains xs x) then x : removeDup xs else removeDup xs
