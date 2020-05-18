delete_bst(X,bst(L,X,nil),L):- !.
delete_bst(X,bst(nil,X,R),R):- !.
delete_bst(X,bst(L,X,R),bst(L1,P,R)):-
	getpredecessor(L,P,L1),
	!.
delete_bst(X,bst(L,Root,R),bst(L1,Root,R)):-
	X < Root,
	delete_bst(X,L,L1).
delete_bst(X,bst(L,Root,R),bst(L,Root,R1)):-
	X >= Root,
	delete_bst(X,R,R1).

getpredecessor(bst(L,X,nil),X,L).
getpredecessor(bst(L,X,R), R , bst(L,X,R1)):-
	getpredecessor(R,P,R1).	

%bst(bst(nil, 4, nil), 5, bst(bst(nil, 6, bst(nil, 7, nil)), 8, bst(nil, 9, nil)))