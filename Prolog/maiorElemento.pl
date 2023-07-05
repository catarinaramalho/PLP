maximo_lista([Elemento], Elemento).
maximo_lista([Head|Tail], Maior) :- maximo_lista(Tail, MaiorResto),(Head > MaiorResto -> Maior = Head; Maior = MaiorResto).

maior_elemento(Matriz, Maior) :-
    flatten(Matriz, Lista),
    maximo_lista(Lista, Maior).

indice_maior_elemento(Matriz, IndiceLinha, IndiceColuna):-
    maior_elemento(Matriz, Maior),
    nth0(IndiceLinha, Matriz, Linha),
    nth0(IndiceColuna, Linha, Maior).

main :-
    read(Matriz),
    indice_maior_elemento(Matriz, IndiceLinha, IndiceColuna),
    Coordenada1 is IndiceLinha + 1,
    Coordenada2 is IndiceColuna +1,
    format("~w ~w",[Coordenada1, Coordenada2]),
    halt.

