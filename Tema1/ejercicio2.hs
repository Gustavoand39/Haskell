ej2 :: Float -> Float
ej2 x = x - fromIntegral (floor x)

-- floor obtiene solo la parte entera del float (29.5 -> 29)
-- Redondea el número decimal al número entero más bajo cercano
-- fromIntegral convierte un Entero a Flotante