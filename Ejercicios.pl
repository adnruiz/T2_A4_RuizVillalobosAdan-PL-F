predicado([]):-procesar([]).
predicado([cabeza|cola]:-predicado(cola), procesar(cola),procesar(cabeza),.



%cuentar elemntos de una lista
cuenta_elementos([6,2,3,5,6,1,8,0],N).
cuenta_elementos([],0).
cuenta_elementos([_|L],N):-cuenta_elementos(L, Tam)), N is Tam+1.
cuenta_elementos([4,2,7],N)
cuenta_elementos([4|2,7],N):-cuenta_elementos([2,7],Tam), N is Tam+1.
cuenta_elementos([2|7],N):-cuenta_elementos([7],Tam), N is Tam+1.
cuenta_elementos([7|],N):-cuenta_elementos([],Tam), N is Tam+1.
cuenta_elementos([],0).

%Sumar elementos de una lista vacia
suma_lista([],0).
suma_lista([X|L],N):-suma_lista(L,C), N is C+X.
suma_lista([2,4,6],N).
suma_lista([5,2,6,3,4,20],N).
suma_lista([7,5,-1],N).