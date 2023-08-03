{- Ejemplo 2
    Realizar una función recursiva que
    duplique n cantida de veces una cadena
    (String -> Int -> String)
-}

ej2v1 :: String -> Int -> String
ej2v1 a b = if (b > 0)
    then
        a ++ ej2v1 a (b-1)
    else
        ""

ej2v2 :: String -> Int -> String
ej2v2 a b
    | b > 0 = a ++ ej2v2 a (b-1)
    | b == 0 = ""

ej2v3 :: String -> Int -> String
ej2v3 _ 0 = "" -- Si es un cero entonces imprime una cadena vacía
ej2v3 a b = a ++ ej2v3 a (b-1)