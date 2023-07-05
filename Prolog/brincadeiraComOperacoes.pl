calcular_resultado([], Resultado, Resultado, _).
calcular_resultado([Numero | NovoResto], ValorAtual, ResultadoFinal, Operador):-
    (Operador = "+" ->
        NovoValorAtual is ValorAtual + Numero, NovoOperador = "-";
    Operador = "-" ->
        NovoValorAtual is ValorAtual - Numero, NovoOperador = "*";
    Operador = "*" ->
        NovoValorAtual is ValorAtual * Numero, NovoOperador = "/";
    Operador = "/" ->
        (Numero = 0 ->
                NovoValorAtual is ValorAtual;
                NovoValorAtual is ValorAtual/Numero), NovoOperador = "+"),
    calcular_resultado(NovoResto, NovoValorAtual, ResultadoFinal, NovoOperador).
    
main :-
    read(Lista),
    read(Numero),
    calcular_resultado(Lista, Numero, ResultadoFinal, "+"),
    write(ResultadoFinal),
    halt.
