ej4 :: Int -> String
ej4 n = unwords (map show (take n (iterate (*2) 1)))