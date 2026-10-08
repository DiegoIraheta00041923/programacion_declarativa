almacenar(0, []).

almacenar(N, [Digito | Resto]) :-
    N > 0,
    Digito is N mod 10,       
    NuevoN is N // 10,         
    almacenar(NuevoN, Resto).  