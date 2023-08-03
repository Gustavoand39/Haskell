{-
    Si un número es primo
-}

ej8 :: Int -> Bool
ej8 x = divisores x x == 2

divisores :: Int -> Int -> Int
divisores _ 1 = 1
divisores x y
    | mod x y == 0 = 1 + divisores x (y - 1)
    | otherwise = divisores x (y - 1)