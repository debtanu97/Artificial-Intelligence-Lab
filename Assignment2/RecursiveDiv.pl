div(X,X,1):- !.
div(0,Y,0):- !.

div(X,Y,Q):-
	Y > 0, X > 0,
	sub(X,Y,Q1),
	div(Q1,Y,Q2),!,
	Q is Q2 + 1.

div(X,Y,Q):-
	Y < 0, X < 0,
	sub(X,Y,Q1),
	div(Q1,Y,Q2),!,
	Q is Q2 + 1.	

div(X,Y,Q):-
	Y < 0, X > 0,
	add(X,Y,Q1),
	div(Q1,Y,Q2),!,
	Q is Q2 - 1.

div(X,Y,Q):-
	Y > 0, X < 0,
	add(X,Y,Q1),
	div(Q1,Y,Q2),!,
	Q is Q2 - 1.