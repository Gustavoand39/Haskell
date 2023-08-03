data Color = Rojo | Verde | Amarillo | Azul | Negro | Blanco deriving (Eq, Show)

fc1 :: Color -> String
fc1 x
    | x == Rojo = "Manzana Roja"
    | x == Verde = "Limon"
    | x == Amarillo = "Platano"
    | x == Azul = "Mora"
    | x == Negro = "Zapote"
    | x == Blanco = "Coliflor"

fc2 :: String -> (Color, Color)
fc2 x
    | x == "Naranja" = (Rojo, Amarillo)
    | x == "Morado" = (Rojo, Azul)
    | x == "Verde" = (Amarillo, Azul)
    | x == "Rosa" = (Rojo, Blanco)
    | x == "Gris" = (Negro, Blanco)
    | x == "Cafe" = (Rojo, Verde)
    | otherwise = error "No tenemos!"