# TallerProlog

Este repositorio contiene ejercicios básicos en **Prolog** diseñados para practicar conceptos fundamentales de programación lógica. A continuación, se describen los códigos disponibles en este repositorio, qué hacen y cómo lo hacen.

---

## Ejercicios

### 1. **Contar Elementos en una Lista**

```prolog
contarElementos([], 0).
contarElementos([_|Resto], N) :- contarElementos(Resto, N1), N is N1 + 1.
```

**¿Qué hace?**  
Cuenta la cantidad de elementos en una lista.

**¿Cómo lo hace?**  
- La primera regla (`contarElementos([], 0)`) define el caso base: una lista vacía tiene 0 elementos.
- La segunda regla descompone la lista en cabeza y cola (`_|Resto`), llama recursivamente a `contarElementos` para contar los elementos de la cola, y luego suma 1 al resultado.

---

### 2. **Verificar si un Elemento es Miembro de una Lista**

```prolog
miembro(X, [X|_]).
miembro(X, [_|T]) :- miembro(X, T).
```

**¿Qué hace?**  
Comprueba si un elemento dado pertenece a una lista.

**¿Cómo lo hace?**  
- La primera regla (`miembro(X, [X|_]`) define que un elemento es miembro si coincide con la cabeza de la lista.
- La segunda regla verifica la cola recursivamente si no encuentra el elemento en la cabeza.

---

### 3. **Concatenar dos Listas**

```prolog
concatenar([], Lista, Lista).
concatenar([Cabeza|Cola], Lista, [Cabeza|Resultado]) :-
    concatenar(Cola, Lista, Resultado).
```

**¿Qué hace?**  
Concatena dos listas en una sola.

**¿Cómo lo hace?**  
- La primera regla (`concatenar([], Lista, Lista)`) define el caso base: concatenar una lista vacía con otra lista simplemente devuelve la segunda lista.
- La segunda regla descompone la primera lista en cabeza y cola, agrega la cabeza al resultado, y concatena recursivamente el resto de la primera lista con la segunda lista.

---

## **GRUPO DE TRABAJO**
- Juan Barrera, Miguel Celis, Santiago Rodriguez
