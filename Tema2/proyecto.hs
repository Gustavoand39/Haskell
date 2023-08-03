data ArbolB a = VacioB | NodoB (ArbolB a) a (ArbolB a) deriving Show

ab1 :: ArbolB Integer
ab1 = NodoB aI 15 aD
    where
        aI = NodoB aII 6 aID
        aD = NodoB aDI 20 aDD
        aII = NodoB aIII 3 aIID
        aID = NodoB aIDI 9 aIDD
        aDI = NodoB aDII 18 VacioB
        aDD = hoja 24
        aIII = hoja 1
        aIID = hoja 4
        aIDI = hoja 7
        aIDD = hoja 12
        aDII = hoja 17

hoja :: a -> ArbolB a
hoja x = NodoB VacioB x VacioB

-- Función 1

existe :: Eq a => a -> ArbolB a -> Bool
existe _ VacioB = False
existe nodo (NodoB i r d)
    | nodo == r = True
    | otherwise = existe nodo i || existe nodo d

-- Función 2

padre :: Eq a => a -> ArbolB a -> a
padre _ VacioB = error "El árbol está vacío"
padre nodo (NodoB i r d)
    | nodo == r = error "No hay un padre"
    | existe nodo i =
        if nodo == raiz i
            then r
            else padre nodo i
    | existe nodo d =
        if nodo == raiz d
            then r
            else padre nodo d
    | otherwise = error "El nodo no existe en el árbol"
    where
        raiz VacioB = error "El árbol está vacío"
        raiz (NodoB _ r _) = r

{-
                        15
            6                           20
    3               9               18      24
1       4       7       12      17

                        R
            aI                          aD
    aII             aID             aDI     aDD
aIII    aIID    aIDI    aIDD    aDII
-}