ej1 :: Int -> Int -> Int
ej1 x y
    | x > 25 = ej1 (x - 24) y
    | y > 0 = ej1 (x + 1) (y - 1)
    | otherwise = x