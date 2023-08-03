{- Ejemplo 5
    Realizar un función recursiva que cuente cuántos dígitos tiene
    un número entero. (Int -> Int)
-}

ej5 :: Int -> Int
ej5 n
    | n < 10 = 1
    | otherwise = 1 + ej5 (n `div` 10)

ej5v2 :: Int -> Int
ej5v2 a = if (a < 10)
    then
        1
    else
        1 + ej5v2 (div a 10)