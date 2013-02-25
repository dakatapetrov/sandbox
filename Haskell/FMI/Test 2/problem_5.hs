type Book = (String, Int)

lib :: [Book]
lib = [("SICP", 1996), ("Learn you a haskell for great good", 2011), ("Real world haskell", 208), ("Programming in haskell", 2011)]

noneSameYear :: [Int] -> Int -> Bool
noneSameYear [] _ = False
noneSameYear list year = if (length (filter (\x -> x == year) list)) > 1 then False else True

findUniques :: [Book] -> [String]
findUniques books = [n | (n, y) <- books, noneSameYear years y]
	where years = [y | (n, y) <- books]

longestTitleYear :: [Book] -> Int
longestTitleYear books = head year
	where year = [y | (t, y) <- books, (length t) == max]
		where max = maximum (map (\x -> length x) [t | (t, _) <- books])
