imprimir :: Int -> Int -> [Int]
imprimir a b
	| a < b = (imprimir (a+1) b) ++ [a]
	| otherwise = []



invertir :: [a] -> [a]
invertir [] = []
invertir (cabeza : resto) = (invertir resto) ++ [cabeza]


factorial :: Int -> Int
factorial 0 = 0
factorial 1 = 1
factorial n = n * factorial (n-1)

quitar2do :: [a] -> [a]
quitar2do l = (head l) : tail (tail l)

quitarnesimo :: Int -> [a] -> [a]
quitarnesimo 0 x = tail x
quitarnesimo n x = (head x) : quitarnesimo (n-1) (tail x)
