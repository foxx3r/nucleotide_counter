{-
    Thymine -> T
    Guanine -> G
    Cytosine -> C
    Adenine -> A 
-}

count_dna :: Char -> String -> Int
count_dna c [] = 0
count_dna c (x:xs)
  | (c == x) = 1 + (count_dna c xs)
  | otherwise = count_dna c xs

main :: IO ()
main = do
    putStr "Enter the DNA sequence: "
    dna <- getLine
    putStrLn ("Adenine: " ++ show (count_dna 'A' (show dna)))
    putStrLn ("Thymine: " ++ show (count_dna 'T' (show dna)))
    putStrLn ("Cytosine: " ++ show (count_dna 'C' (show dna)))
    putStrLn ("Guanine: " ++ show (count_dna 'G' (show dna)))
