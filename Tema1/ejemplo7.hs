{-
    Escriba una función que muestre los números naturales menores o iguales que un número n determinado,
    que no sean múltiplos ni de 3 ni de 7. (Int -> String)
-}

ej7 :: Int -> String
ej7 x
    | x == 1 = "1"
    | mod x 3 == 0 || mod x 7 == 0 = ej7 (x - 1)
    | otherwise = show x ++ ", " ++ ej7 (x - 1)