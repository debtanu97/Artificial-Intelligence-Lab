delete_x_y(_,_,[],[]).
delete_x_y(X,Y,[X|L],[Y|L]):- !.
delete_x_y(X,Y,[Z|L],[Z|M]):-
	delete_x_y(X,Y,L,M).


