factorial :: Int -> Int
factorial n
    | n == 0 = 1
    | otherwise = n * factorial (n-1)



fibonacci :: Int -> Int
fibonacci n
    | n == 0 = 0
    | n == 1 = 1
    | otherwise = fibonacci (n-1) + fibonacci (n-2)
    
    
sumatoria :: Int -> Int
sumatoria n
    | n == 0 = 0
    | otherwise = n + sumatoria (n-1)
    
fibonaccilineal :: Int -> Int
fibonaccilineal n = fibonaccimejorado 0 1 n
    
fibonaccimejorado :: Int -> Int -> Int -> Int
fibonaccimejorado a b n
    | n == 0 = a
    | n == 1 = b
    | otherwise = fibonaccimejorado b (a+b) (n-1)
    
    
    
    
    
factorial2 :: Int -> Int
factorial2 0 = 1
factorial2 n = n * factorial2 (n-1)    
    
miAnd :: Bool -> Bool -> Bool
miAnd True True = True
miAnd _ _ = False

miOr :: Bool -> Bool -> Bool
miOr False False = False
miOr _ _ = True

miXOr :: Bool -> Bool -> Bool
miXOr True True = False
miXOr False False = False
miXOr _ _ = True


estaVacia :: [Int] -> Bool
estaVacia [] = True
estaVacia _ = False

suma :: [Int] -> Int
suma [] = 0
suma (cabeza:cola) = cabeza + suma cola
--suma lista = (head lista) + suma (tail lista)


multiplique2 :: [Int] -> [Int]
multiplique2 [] = []
multiplique2 (cabeza:cola) = cabeza*2 : multiplique2 cola


multiplique :: [Int] -> [Int] -> [Int]
multiplique [] [] = []
multiplique [] (c:cola) = 0 : (multiplique [] cola)
multiplique (c:cola) [] = 0 : (multiplique cola [])
multiplique (x:xs) (y:ys) = (x*y) : (multiplique xs ys) 


emparejar :: [Int] -> [Int] -> [(Int, Int)]
emparejar [] [] = []
emparejar [] (c:cola) = (0,c) : (emparejar [] cola)
emparejar (c:cola) [] = (c,0) : (emparejar cola [])
emparejar (x:xs) (y:ys) = (x,y) : (emparejar xs ys) 



    
    

