ssort([],[]).
ssort(In,Out):-
	findmin(In,Min),
	remove(Min,In,L),
	ssort(L,SL),
	[Min|SL] = Out,

ssort(L,L).

min(X,Y,X):- X < Y, !.
min(X,Y,Y).

findmin([X],X).
findmin([H|T],X):-
	findmin(T,Z),
	min(H,Z,X).

remove([],X,[]).
remove(X,[X|T],T).
remove(X,[H|T],[H|T1]):-
	remove(X,T,T1).