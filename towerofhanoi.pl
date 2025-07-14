% Base case: move one disk
move(1, From, To, _, [move(From, To)]) :- !.

% Recursive case: move N disks
move(N, From, To, Aux, Moves) :-
    N > 1,
    N1 is N - 1,

    move(N1, From, Aux, To, Moves1),
    move(1, From, To, _, MoveDisk),
    move(N1, Aux, To, From, Moves2),

    append(Moves1, MoveDisk, Temp),
    append(Temp, Moves2, Moves).


%?- move(3, a, c, b, Moves).
