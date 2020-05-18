mul(X,0,0):- !.
mul(X,1,X):- !.

mul(X,Y,N):-
	Y>0,
	Y1 is Y-1,
	mul(X,Y1,N1),!,
	add(X,N1,N).

mul(X,Y,N):-
	Y < 0,
	Y1 is Y+1,
	mul(X,Y1,N1),!,
	sub(N1,X,N).
