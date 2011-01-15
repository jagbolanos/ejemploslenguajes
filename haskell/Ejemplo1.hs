imprimir :: Int -> Int -> [Int]
imprimir a b
	| a < b = a : imprimir (a+1) b
	| otherwise = []



invertir :: [a] -> [a]
invertir [] = []
invertir (cabeza : resto) = (invertir resto) ++ [cabeza]
