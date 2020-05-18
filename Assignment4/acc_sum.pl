list_sum_acc(L,N):-
	list_sum(L,0,N).

list_sum([], N, N).
list_sum([Item1|Tail], Acc, Total):-	
	Acc1 is Acc + Item1,
	list_sum(Tail, Acc1, Total).