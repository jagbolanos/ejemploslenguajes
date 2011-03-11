
data Mes = Ene | Feb | Mar | Abr | May | Jun | Jul | Ago | Sep | Oct | Nov | Dic
    deriving (Show)
    
type Persona = (String, Mes)

data Expr = Valor Int | Suma Expr Expr | Mul Expr Expr
    deriving (Show)
    
    
calcular :: Expr -> Int
calcular (Valor x) = x
calcular (Suma e1 e2) = (calcular e1) + (calcular e2)
calcular (Mul e1 e2) = (calcular e1) * (calcular e2)

