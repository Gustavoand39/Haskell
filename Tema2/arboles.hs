data ArbolB a = VacioB | NodoB (ArbolB a) a (ArbolB a) deriving Show

ab1 :: ArbolB Integer
ab1 = NodoB aI 10 aD
    where                                                       -- 10
        aI = NodoB aII 15 aID                           -- 15       -- 18
        aD = NodoB VacioB 18 aDD                    -- 24   -- 27       -- 24
        aII = NodoB VacioB 24 VacioB -- hojaB 24
        aID = NodoB VacioB 27 VacioB -- hojaB 27
        aDD = NodoB VacioB 24 VacioB -- hojaB 24

hojaB :: a -> ArbolB a
hojaB x = NodoB VacioB x VacioB

-- Imprimir la raíz del árbol

raizB :: ArbolB a -> a
raizB VacioB = error "EL arbol esta vacio"
raizB (NodoB _ r _) = r

-- Imprimir el tamaño del árbol

tamanoB :: ArbolB a -> Int
tamanoB VacioB = 0
tamanoB (NodoB i r d) = 1 + tamanoB i + tamanoB d

-- Imprimir la altura del árbol

alturaB :: ArbolB a -> Int
alturaB VacioB = 0
alturaB (NodoB i r d) = 1 + max (alturaB i) (alturaB d)

-- I D R

inOrdenB :: ArbolB a -> [a]
inOrdenB VacioB = []
inOrdenB (NodoB i r d) = inOrdenB i ++ [r] ++ inOrdenB d

-- I D R

preOrdenB :: ArbolB a -> [a]
preOrdenB VacioB = []
preOrdenB (NodoB i r d) =  [r] ++ preOrdenB i ++ preOrdenB d

-- R I D

postOrdenB :: ArbolB a -> [a]
postOrdenB VacioB = []
postOrdenB (NodoB i r d) =  postOrdenB i ++ postOrdenB d ++ [r]