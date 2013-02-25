hasDigit :: Int -> Int -> Bool
hasDigit num digit
	|num == 0 = False
	|(mod num 10) == digit = True
	|otherwise = hasDigit (div num 10) digit

commonDigits :: Int -> Int -> Int
commonDigits num1 num2
	|num2 == 0 = 0
	|hasDigit num1 (mod num2 10) = 1 + commonDigits num1 (div num2 10)
	|otherwise = commonDigits num1 (div num2 10)

isProgression :: Int -> Bool
isProgression num
	|(div num 10) == 0 = True
	|(mod num 10) < (mod (div num 10) 10) = False
	|otherwise = isProgression (div num 10)
