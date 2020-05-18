/*consult:- member_of_list.pl, union.pl, set_diff.pl*/

sym_diff(L1,L2,L):-
	set_diff(L1,L2,L3),
	set_diff(L2,L1,L4),
	union(L3,L4,L).