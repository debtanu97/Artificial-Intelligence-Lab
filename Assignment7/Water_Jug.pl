visited_state(0, 0).

% Move to fill 4 Gallon Jug
move(state(X, Y), state(4, Y)):- 
    X < 4,
    not(visited_state(4, Y)),
    assert(visited_state(X, Y)),
    write("Fill the 4-Gallon jug                                     : "),
    printstate(X, Y, 4, Y).

%
move(state(X, Y), state(X, 3)):- 
    Y < 3,
    not(visited_state(X, 3)),
    assert(visited_state(X, Y)),
    write("Fill the 3-Gallon jug                                     : "),
    printstate(X, Y, X, 3).

move(state(X, Y), state(0, Y)):- 
    X > 0,
    not(visited_state(0, Y)),
    assert(visited_state(X, Y)),
    write("Empty the 4-Gallon jug on ground                          : "),
    printstate(X, Y, 0, Y).

move(state(X, Y), state(X, 0)):- 
    Y > 0,
    not(visited_state(X, 0)),
    assert(visited_state(X, Y)),
    write("Empty the 3-Gallon jug on ground                          : "),
    printstate(X, Y, X, 0).

move(state(X, Y), state(4, NEW_Y)):- 
    X + Y >= 4,
    Y > 0,
    NEW_Y is Y - (4 - X),
    not(visited_state(4, NEW_Y)),
    assert(visited_state(X, Y)),
    write("Pour water from 3-Gallon jug to 4-gallon until it is full : "),
    printstate(X, Y, 4, NEW_Y).

move(state(X, Y), state(NEW_X, 3)):- 
    X + Y >= 3,
    X > 0,
    NEW_X is X - (3 - Y),
    not(visited_state(NEW_X, 3)),
    assert(visited_state(X, Y)),
    write("Pour water from 4-Gallon jug to 3-gallon until it is full : "),
    printstate(X, Y, NEW_X, 3).

move(state(X, Y), state(NEW_X, 0)):- 
    X + Y =< 4,
    Y > 0,
    NEW_X is X + Y,
    not(visited_state(NEW_X, 0)),
    assert(visited_state(X, Y)),
    write("Pour all the water from 3-Gallon jug to 4-gallon jug      : "),
    printstate(X, Y, NEW_X, 0).

move(state(X, Y), state(0, NEW_Y)):- 
    X + Y =< 3,
    X > 0, 
    NEW_Y is X + Y,
    not(visited_state(0, NEW_Y)),
    assert(visited_state(X, Y)),
    write("Pour all the water from 4-Gallon jug to 3-gallon jug      : "),
    printstate(X, Y, 0, NEW_Y).
    
printstate(X1, Y1, X2, Y2) :-
    write("("), write(X1), write(","), write(Y1), write(") -> ("), 
    write(X2), write(","), write(Y2), write(")\n").

can_fill(state(2, _)).
can_fill(OldState) :-
    move(OldState, NewState),
    can_fill(NewState), !.

start :-
    write("\nRepresentation of State : (Water in 4-gal jug, Water in 3-gal jug)\n\n"),
    can_fill(state(3, 0)),
    retractall(visited_state(_,_)).