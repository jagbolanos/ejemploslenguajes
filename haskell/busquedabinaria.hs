

data ArbolBinario a = Nodo a (ArbolBinario a) (ArbolBinario a) | Nulo
    deriving (Show)


--construir :: Ord a => [a] -> ArbolBinario a

--insertar :: Ord a => ArbolBinario a -> a -> ArbolBinario a

buscar :: Ord a => ArbolBinario a -> a -> Bool
--buscar (Nodo v Nulo Nulo) x = x == v
--buscar (Nodo v Nulo der) x
--    | x == v = True
--    | x > v = buscar der x
--    | otherwise = False
    
--buscar (Nodo v izq Nulo) x
--    | x == v = True
--    | x < v = buscar izq x
--    | otherwise = False    

buscar Nulo _ = False
buscar (Nodo v izq der) x
    | x == v = True
    | x < v = buscar izq x
    | x > v = buscar der x
