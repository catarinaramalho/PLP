valorItem :: String -> Int
valorItem x
    |x == "cafe" = 4
    |x == "pao" = 2
    |x == "suco" = 5
    |x == "pao de queijo" = 5
    |x == "sanduiche" = 3
    |otherwise = 0


calcularConta :: Int -> Int -> IO Int
calcularConta 0 total = return total
calcularConta n total = do
    item <- getLine
    let valor = valorItem item
    calcularConta (n-1) (total + valor)

main :: IO()
main = do 
    quantidade <- readLn
    total <- calcularConta quantidade 0
    print(total)
