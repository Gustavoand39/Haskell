{-
    Escriba una función recursiva que determine si el número entero ingresado por el
    usuario es par o no. (Int -> String)
-}

ej6 :: Int -> String
ej6 x
    | x == 0 = "Par"
    | x == 1 = "Impar"
    | otherwise = ej6 (x - 2)

ej6v2 :: Int -> String
ej6v2 x = if x > 1
    then
        ej6v2 (x - 2)
    else if x == 0
        then
            "Es par"
        else
            "Es impar"

ej6v3 :: Int -> String
ej6v3 0 = "Es par"
ej6v3 1 = "Es impar"
ej6v3 x = ej6v3 (x - 2)