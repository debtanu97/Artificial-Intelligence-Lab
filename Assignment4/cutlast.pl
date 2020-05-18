cutlast([X],[]):-!.

cutlast([H|T],[H|L]):-
	cutlast(T,L).