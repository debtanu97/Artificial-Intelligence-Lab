replace_all(_,_,[],[]).
replace_all(X,Y,[X|L],[Y|M]):-
	replace_all(X,Y,L,M),!.
replace_all(X,Y,[Z|L],[Z|M]):-
	replace_all(X,Y,L,M).	