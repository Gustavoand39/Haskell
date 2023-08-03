data Carro = Carro {marca :: String, modelo :: String, precio :: Float} deriving (Show)

c1 = Carro { marca = "Chevrolet", modelo = "Silverado", precio = 40000 }
c2 = Carro { marca = "Dodge", modelo = "RAM", precio = 85000 }
c3 = Carro { marca = "Chevy", modelo = "J23F", precio = 95000 }
c4 = Carro { marca = "Tsuru", modelo = "K1J2", precio = 60000 }
c5 = Carro { marca = "Toyota", modelo = "A123", precio = 99000 }

desCarro :: Carro -> String
desCarro (Carro {marca = m, modelo = mo, precio = p}) = "El carro es " ++ m ++ ", modelo " ++ mo ++ " y tiene un precio de $" ++ show p ++ " pesos."

listaCarros :: [Carro] -> String
listaCarros [] = ""
listaCarros (Carro {marca = m, modelo = mo, precio = p} : cs) = "El carro es " ++ m ++ ", modelo " ++ mo ++ " y tiene un precio de $" ++ show p ++ " pesos.\n" ++ listaCarros cs

mostrar = do
    putStrLn "Lista de Carros"
    putStrLn (listaCarros[c1, c2, c3, c4, c5])



fun4 (fun3 (fun2 (fun1 [11..56])))

fun4 . fun3 . fun2 . fun1 [11..56]


{- [2^x | x <- [0..10], 2^x <= 100] -}

{- length [[a,b] | a <- [1..6], b <- [1..6]], a + b == 8 -}