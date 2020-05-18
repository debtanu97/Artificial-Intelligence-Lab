deleteleaf(Tree,X,NewTree):-
	insert_bst(X,NewTree,Tree).

%bst( bst( bst(nil,45,nil),90,bst(nil,93,nil) ), 97, bst( bst(nil,103,nil), 110, bst(nil, 125,nil)))