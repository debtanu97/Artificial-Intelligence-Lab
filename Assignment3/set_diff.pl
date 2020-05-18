set_diff(X,[],X).
set_diff([],_,[]).

set_diff([X|L1],L2,L3):-
	our_member(X,L2), !,
	set_diff(L1,L2,L3).

set_diff([X|L1],L2,[X|L3]):-
	set_diff(L1,L2,L3).