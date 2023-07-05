dobro:: Int -> Int
dobro x = x * 2

main::IO()
main = do
    input <- getLine
    let numeroDobrado = dobro(read input)
    print numeroDobrado
