rem_wa([],[]).
rem_wa([H|T],L2):-
	our_member(H,T),
	!,
	rem_wa(T,L2).
rem_wa([H|T],[H|L2]):-
	rem_wa(T,L2).