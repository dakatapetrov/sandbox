hasDigit :: Int -> Int -> Bool
hasDigit x y
	|x == 0 = False
	|((mod x 10) == y) = True
	|otherwise = hasDigit (div x 10) y

numbersWith' :: Int -> Int -> [Int]
numbersWith' d x = if hasDigit x d then x : numbersWith' d (x + 1) else numbersWith' d (x + 1)

numbersWith :: Int -> [Int]
numbersWith d = numbersWith' d d
