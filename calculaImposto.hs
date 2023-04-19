import Text.Printf
imposto::Float->Float
imposto x
    |x <= 1903.98 = 0.00
    |x <= 2826.65 = 142.80+(0.075*(x-1903.99))
    |x <= 3751.05 = 354.80+(0.15*(x-2826.66))
    |x <= 4664.68 = 636.13+(0.225*(x-3751.06))
    |otherwise = 869.36 +(0.275*(x-4664.68))
main::IO()
main = do
    input <- getLine
    let impostoCalculado = imposto(read input)
    let salarioLiquido = (read input) - impostoCalculado
    printf "O valor do imposto de renda retido eh: R$ %.2f\n" impostoCalculado
    printf "O salario liquido eh: R$ %.2f" salarioLiquido
