type List = [Int]
type Graph = [List]

member :: List -> Int -> Bool
member [] _ = False
member (x:xs) y = if x == y then True else member xs y

allNotInList :: List -> List -> List
allNotInList l1 l2 = [x | x <- l2, not (member l1 x)]

getVertex :: Graph -> Int -> List
getVertex [] _ = []
getVertex (x:xs) v = if (head x) == v then x else getVertex xs v

bfs' :: Graph -> List -> List -> List
bfs' _ l [] = l
bfs' g list (x:xs) = bfs' g newList queue
	where
		v = allNotInList list (getVertex g x)
		newList = list ++ v
		queue = xs ++ v

bfs :: Graph -> List
bfs [] = []
bfs (x:xs) = bfs' (x:xs) [head x] [head x]
