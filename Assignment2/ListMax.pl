max(X,Y,X) :- 
	X >= Y.
max(X,Y,Y) :-	
	X < Y.

max_list([X],X).
max_list([X|L],Max) :-
	max_list(L,M),
	max(X,M,Max).