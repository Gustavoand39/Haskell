ejercicio1 :: [Char] -> [Char]
ejercicio1 lista = [ x | x <- lista, elem x "aeiou" ]