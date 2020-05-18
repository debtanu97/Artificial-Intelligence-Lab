/* state(Man, Tiger, Goat, Cabbage) */
/* 0 = Left Side */
/* 1 =  Right Side */

visited(state(0, 0, 0, 0)).

invalid(state(M, T, G, C)) :-
	M =\= T , T = G ;
	M =\= G , G = C .

printstate(state(M1, T1, G1, C1), state(M2, T2, G2, C2)) :-
	write("("),write(M1),write(","),write(T1),write(","),write(G1),write(","),write(C1),write(")"),write(" -> "),
	write("("),write(M2),write(","),write(T2),write(","),write(G2),write(","),write(C2),write(")"),write("\n").

move(state(M, T, G, C), state(M1, T, G, C)) :-
	M1 is 1 - M,
	not(invalid(state(M1, T, G, C))),
	not(visited(state(M1, T, G, C))),
	assert(visited(state(M, T, G, C))),
	write("Man Crosses            : "),
	printstate(state(M, T, G, C), state(M1, T, G, C)).

move(state(M, M, G, C), state(M1, M1, G, C)) :-
	M1 is 1 - M,
	not(invalid(state(M1, M1, G, C))),
	not(visited(state(M1, M1, G, C))),
	assert(visited(state(M, M, G, C))),
	write("Man and Tiger Cross    : "),
	printstate(state(M, M, G, C), state(M1, M1, G, C)).

move(state(M, T, M, C), state(M1, T, M1, C)) :-
	M1 is 1 - M,
	not(invalid(state(M1, T, M1, C))),
	not(visited(state(M1, T, M1, C))),
	assert(visited(state(M, T, M, C))),
	write("Man and Goat Cross     : "),
	printstate(state(M, T, M, C), state(M1, T, M1, C)).

move(state(M, T, G, M), state(M1, T, G, M1)) :-
	M1 is 1 - M,
	not(invalid(state(M1, T, G, M1))),
	not(visited(state(M1, T, G, M1))),
	assert(visited(state(M, T, G, M))),
	write("Man and Cabbage Cross  : "),
	printstate(state(M, T, G, M), state(M1, T, G, M1)).

can_cross(state(1,1,1,1)).
can_cross(OldState) :-
	move(OldState, NewState),
	can_cross(NewState).

start :-
	write("\nRepresentation of State : (Man, Tiger, Goat, Cabbage)\n"),
	write("0 : Left Bank\n"),
	write("1 : Right Bank\n\n"),
	can_cross(state(0,0,0,0)), 
	retractall(visited(state(_,_,_,_))), !.