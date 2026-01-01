% Q) Solve the problem for the following arithmetic problem.
%     a) LETS + WAVE = LATER
%     b) SEND + MORE = MONEY
%     c) TWO + TWO = FOUR
%     d) IT + IS = ME
%     e) BASE + BALL = GAMES

% a) LETS + WAVE = LATER

/* --------------------------------------------------
    solution(Z)
    Solves the cryptarithmetic puzzle:
    LETS + WAVE = LATER
-------------------------------------------------- */

solution(Z):-
    /* Assign digits to each letter */
    digit(L), L > 0,          % L is a leading digit, cannot be 0
    digit(E),                 % E can be any digit
    digit(T),                 % T can be any digit
    digit(S),                 % S can be any digit
    digit(W), W > 0,          % W is a leading digit, cannot be 0
    digit(A),                 % A can be any digit
    digit(V),                 % V can be any digit
    digit(E),                 % E appears again in the sum
    digit(R),                 % R can be any digit

    /* Arithmetic equation representing:
       LETS + WAVE = LATER */
    1000*L + 100*E + 10*T + S
    + 1000*W + 100*A + 10*V + E
    =:= 10000*L + 1000*A + 100*T + 10*E + R,

    /* Store solution digits in a list */
    Z = [L, E, T, S, W, A, V, R],

    /* Ensure all letters have different digits */
    different(Z).


/* --------------------------------------------------
    digit(X)
    Defines possible digits from 0 to 9
-------------------------------------------------- */
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


/* --------------------------------------------------
    different(List)
    Checks that all elements in the list are unique
-------------------------------------------------- */
different([]).                % An empty list has no duplicates

different([X|P]):-
    not(member(X, P)),         % X should not appear in the rest of the list
    different(P).              % Recursively check remaining elements