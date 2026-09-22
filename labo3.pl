sumahasta1(1,1).

sumahasta1(X,R):-
    X > 1,
    is(NS, -(X,1)),
    sumahasta1(NS,NR),
    is(R, +(X,NR)).

