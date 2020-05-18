sub(X,0,X).

sub(X,Y,N):-
	Y > 0,
	Y1 is Y-1,
	sub(X,Y1,N1),!,
	N is N1-1.

sub(X,Y,N):-
	Y < 0,
	Y1 is Y+1,
	sub(X,Y1,N1),!,
	N is N1+1.		