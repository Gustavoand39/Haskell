{- Ejemplo 1
    Realizar una función que devuelva el máximo de dos agrumentos de tipo Entero,
    salida de tipo Entero.
-}

ej1v1 :: Int -> Int -> Int
ej1v1 a b = max a b

ej1v2 :: Int -> Int -> Int
ej1v2 a b = if (a > b) then a else b

ej1v3 :: Int -> Int -> Int
ej1v3 a b
    | a > b = a
    | b > a = b
    | otherwise = error "Son iguales"