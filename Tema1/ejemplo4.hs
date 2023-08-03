{- Ejemplo 4
    Realizar una función que indique si un número es
    múltiplo de otro. (Int -> Int -> Bool)
-}

ej4v1 :: Int -> Int -> Bool
ej4v1 x y = if (mod x y > 0)
    then
        False
    else
        True

ej4v2 :: Int -> Int -> Bool
ej4v2 x y = mod x y = 0 -- mod x y = 0 dará como resultado un boolean

ej4v3 :: Int -> Int -> Bool
ej4v3 x y = x `mod` y == 0