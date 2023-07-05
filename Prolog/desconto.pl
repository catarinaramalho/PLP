calcular_valor_desconto(Quantidade, Tamanho, Desconto) :-
Quantidade>=4, aplicar_desconto(Tamanho, Desconto); Desconto is 0.

aplicar_desconto(g, 0.04).
aplicar_desconto(m, 0.06).
aplicar_desconto(p, 0.08).

main :- read(ValorUnitario),
        calcular_pedido(ValorUnitario, 0, 0, 0).
        
calcular_pedido(ValorUnitario, TotalG, TotalM, TotalP):- read(Tamanho),
(Tamanho = -1 -> calcular_valor_final(TotalG, TotalM, TotalP, ValorUnitario);
atualizar_totais(Tamanho, 1, TotalG, TotalM, TotalP, NovoTotalG, NovoTotalM, NovoTotalP),
calcular_pedido(ValorUnitario, NovoTotalG, NovoTotalM, NovoTotalP)).

atualizar_totais(g, Quantidade, TotalG, TotalM, TotalP, NovoTotalG, TotalM, TotalP):- NovoTotalG is TotalG + Quantidade.
atualizar_totais(m, Quantidade, TotalG, TotalM, TotalP, TotalG, NovoTotalM, TotalP):- NovoTotalM is TotalM + Quantidade.
atualizar_totais(p, Quantidade, TotalG, TotalM, TotalP, TotalG, TotalM, NovoTotalP):- NovoTotalP is TotalP + Quantidade.

calcular_valor_final(TotalG, TotalM, TotalP, ValorUnitario) :-
calcular_valor_desconto(TotalG, g, DescontoG),
calcular_valor_desconto(TotalM, m, DescontoM),
calcular_valor_desconto(TotalP, p, DescontoP),
ValorFinal is (TotalG*ValorUnitario)+(TotalM*ValorUnitario)+(TotalP*ValorUnitario),
format("~2f~n",[ValorFinal - ValorFinal * (DescontoG + DescontoM + DescontoP)]), halt.
