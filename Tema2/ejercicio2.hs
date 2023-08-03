data Person = Person {name :: String, lastname :: String, age :: Int, height :: Float, phone :: String} deriving (Show)

p1 = Person {name = "Luis", lastname = "Perez Perez", age = 15, height = 1.82, phone ="7861001010"}
p2 = Person {name = "Maria", lastname = "Garcia", age = 19, height = 1.90, phone ="7152002020"}
p3 = Person {name = "Jennie", lastname = "Kim", age = 27, height = 1.63, phone ="7863003030"}
p4 = Person {name = "Ji-soo", lastname = "Kim", age = 28, height = 1.62, phone ="7864004040"}
p5 = Person {name = "Roseanne", lastname = "Park", age = 26, height = 1.68, phone ="7865005050"}
p6 = Person {name = "Lalisa", lastname = "Manobal", age = 26, height = 1.67, phone ="7866006060"}

desPerson :: Person -> String
desPerson (Person {name = n, lastname = lm, age = a, height = h, phone = p}) = n ++ " " ++ lm ++ " tiene " ++ show a ++ " de edad, su altura es de " ++ show h ++ " metros y el numero para contactarlo es " ++ p

personList :: [Person] -> String
personList [] = ""
personList (Person {name = n, lastname = lm, age = a, height = h, phone = p} : cs) = n ++ " " ++ lm ++ " tiene " ++ show a ++ " de edad, su altura es de " ++ show h ++ " metros y el numero para contactarlo es " ++ p ++ "\n" ++ personList cs

mostrar = do
    putStrLn "Lista de personas"
    putStrLn (personList [p1, p2, p3 ,p4, p5, p6])