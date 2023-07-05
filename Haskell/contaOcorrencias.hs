contaNumeros :: [Int] -> [(Int, Int)]
contaNumeros [] = []
contaNumeros (x:xs) = (x, length $ filter (==x) (x:xs)) : contaNumeros (filter (/=x) xs)

contaOcorrencias :: [Int] -> String
contaOcorrencias [] = "nenhum numero foi sorteado"
contaOcorrencias nums = unlines $ map (\(num, count) -> show num ++ " foi sorteado " ++ show count ++ " vez(es)") $ contaNumeros nums

main::IO()
main = do
    lista <- readLn :: IO [Int]
    putStrLn $ contaOcorrencias lista
