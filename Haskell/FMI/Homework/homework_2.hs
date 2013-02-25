next :: Int -> Int
next a = a + 1

comb :: Bool -> Bool -> Bool
comb a b = a || b

accum :: Int -> Int -> Bool -> (Bool -> Bool -> Bool) -> (Int -> Bool) -> (Int -> Int) -> Bool
accum a b nv comb op next = if a > b then nv else comb (op a) (accum (next a) b nv comb op next)

superOr :: Int -> Int -> (Int -> Bool) -> Bool
superOr a b f = accum a b False comb f next
