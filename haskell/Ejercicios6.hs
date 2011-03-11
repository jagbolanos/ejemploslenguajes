
fibonacci :: [Int]
fibonacci = fib 0 1

fib :: Int -> Int -> [Int]
fib a b = (a + b) : fib b (a+b)

dumbfibonacci :: Int -> Int
dumbfibonacci 0 = 0
dumbfibonacci 1 = 1
dumbfibonacci n = dumbfibonacci (n-1) + dumbfibonacci(n-2)

simplesum :: Int -> Int -> Int
simplesum x y = x + 100
