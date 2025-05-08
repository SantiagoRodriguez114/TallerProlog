concatenar([], Lista, Lista).
concatenar([Cabeza|Cola], Lista, [Cabeza|Resultado]) :-
    concatenar(Cola, Lista, Resultado).
