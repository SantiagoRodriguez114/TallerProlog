miembro(X, [X|_]).
miembro(X, [_|T]) :- miembro(X, T).
