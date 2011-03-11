
devuelve2 :: Int
devuelve2 = 2

doble :: Int -> Int
doble x = x * 2

multiplicar :: Int -> Int -> Int
multiplicar x y = x * y

maximo :: Int -> Int -> Int
maximo x y
    | x > y = x
    | otherwise = y
    
esmayorque :: Int -> Int -> Bool
esmayorque x y
    | x > y = True
    | otherwise = False
    
maximo3 :: Int -> Int -> Int -> Int
maximo3 x y z
    | x >= y && x >= z = x
    | y >= x && y >= z = y
    | otherwise = z
    
    
maximo3version2 :: Int -> Int -> Int -> Int
maximo3version2 x y z = maximo (maximo x y) z


discriminante :: Float -> Float -> Float -> Float
discriminante a b c = b * b - 4 * a * c

cuadraticapos :: Float -> Float -> Float -> Float
cuadraticapos a b c = (-b + sqrt(discriminante a b c)) / (2 * a)

cuadraticaneg :: Float -> Float -> Float -> Float
cuadraticaneg a b c = (-b - sqrt(discriminante a b c)) / (2 * a)


cuadratica :: Float -> Float -> Float -> (Bool, Float, Float)
cuadratica a b c 
    | a == 0 && b == 0 = (False, 0, 0)
    | a == 0 = (True, -c/b, 0)
    | disc < 0 = (False, 0, 0)
    | disc >= 0 = (True, cuadraticapos a b c, cuadraticaneg a b c)
    where
        disc = discriminante a b c


cuadratica2 :: Float -> Float -> Float -> [Float]
cuadratica2 a b c
    | a == 0 && b == 0 = []
    | a == 0 = [-c/b]
    | disc < 0 = []
    | disc >= 0 = [cuadraticapos a b c, cuadraticaneg a b c]
    where
        disc = discriminante a b c



