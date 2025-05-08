contarElementos([], 0).
contarElementos([_|Resto], N) :- contarElementos(Resto, N1), N is N1 + 1.
