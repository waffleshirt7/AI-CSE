% c) TWO + TWO = FOUR

solution(Z):-
    digit(T), T>0,
    digit(W),
    digit(O),
    digit(F), F>0,
    digit(U),
    digit(R),

    (100*T + 10*W+O)*2 =:= 1000*F + 100*O + 10*U + R, 
    Z = [T, W, O, F, U, R],
    different(Z);

    digit(0).
    digit(1).
    digit(2).
    digit(3).
    digit(4).
    digit(5).
    digit(6).
    digit(7).
    digit(8).
    digit(9).

    different([]).

    different([X|P]):-
        not(member(X, P)),
        different(P).