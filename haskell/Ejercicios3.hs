--quicksort :: [Int] -> (Int->Int->Bool) -> [Int]
quicksort [] _ = []
quicksort (p:c) f = quicksort [x | x <- c, f x p ] f ++ [p] ++ quicksort [x | x<-c, not (f x p) ] f

menorque :: Int -> Int -> Bool
menorque a b
    | a < b = True
    | otherwise = False
    
mayorque :: Int -> Int -> Bool
mayorque a b
    | a > b = True
    | otherwise = False
    

