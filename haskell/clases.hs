

data Expresion = Val Int | Sum Expresion Expresion | Mul Expresion Expresion

instance Show Expresion where
    show (Val x) = show x
    show (Sum x y) = "(" ++ (show x) ++ "+" ++ (show y) ++ ")"
    show (Mul x y) = "(" ++ (show x) ++ "*" ++ (show y) ++ ")"

instance Eq Expresion where
    (==) (Val x) (Val y) = x == y
    (==) (Sum x y) (Sum z w) = (x == z && y == w) || (x == w && y == z)
    (==) (Mul x y) (Mul z w) = (x == z && y == w) || (x == w && y == z)
    (==) _ _ = False
    
evaluar :: Expresion -> Int
evaluar (Val x) = x
evaluar (Sum e1 e2) = evaluar e1 + evaluar e2
evaluar (Mul e1 e2) = evaluar e1 * evaluar e2


