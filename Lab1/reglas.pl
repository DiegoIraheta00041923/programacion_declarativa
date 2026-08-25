:- [hechos.pl].

%peligro_salida(superficie).

peligro_salida(X):-
    nivel_peligro(X, Y),
    write("Nivel de peligro: "),
    write(Y),
    nl,
    enemigos_zona(Z, X),
    write("Enemigos en la zona: "),
    write(Z),
    nl.

%recolectar_materiales(eric, superficie).

recolectar_materiales(X, Y):-
    material_zona(Z, Y),
    write("Materiales en la zona: "),
    write(Z),
    nl,
    herramienta(X, H),
    H == hacha,
    write("Recolectando materiales con: "),
    write(H),
    nl,
    !.

recolectar_materiales(X, Y):-
    herramienta(X, H),
    H \== hacha,
    write("No se puede recolectar con herramientas actuales").

puede_kelvin(X):-
    habilidad(kelvin, X).

%puede_kelvin(talar).