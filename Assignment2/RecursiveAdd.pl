add(X,0,X).

add(X,Y,N):-
	Y > 0,
	Y1 is Y-1,
	add(X,Y1,N1),!,
	N is N1+1.

add(X,Y,N):-
	Y < 0,
	Y1 is Y+1,
	add(X,Y1,N1),!,
	N is N1-1.
