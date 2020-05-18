/*converts a binary tree into a min heap*/
heapify(nil, nil).
heapify(bt(L, X, R), Heap):-
    heapify(L, Heapl),
    heapify(R, Heapr),
    adjust(X, Heapl, Heapr, Heap).

/*Adjusts the position of the root element, the left subtree (converted to heap),*/
/*and the right subtree (converted to heap) to generate a min heap.*/
adjust(X, Heapl, Heapr, bt(Heapl, X, Heapr)):-
    greater(X, Heapl),
    greater(X, Heapr),!.

adjust(X, bt(L, X1, R), Heapr, bt(Heapl, X1, Heapr)):-
    X > X1,
    greater(X1, Heapr),!,
    adjust(X, L, R, Heapl).

adjust(X, Heapl, bt(L, X1, R), bt(Heapl, X1, Heapr)):-
    X > X1,
    greater(X1, Heapl),!,
    adjust(X, L, R, Heapr).

/*returns true if X is less than all the elements in the Binary Tree*/
greater(_, nil).
greater(X, bt(_, X1, _)):-
    X =< X1.

/*Converts a list to a binary tree*/
list_to_bt([], nil).
list_to_bt(L, bt(Left, Root, Right)):-
    list_to_bt(L1, Left),
    list_to_bt(L2, Right),
    append(L1, [Root|L2], L).

/*Returns a list of elements in the min heap in ascending order*/
remove_head(bt(nil, X, nil), [X]).
remove_head(bt(L, X, R), [X|S1]):-
    reheapify(L, R, Heap),
    remove_head(Heap, S1).

/*Given 2 heaps, returns a min heap consisting of the elemenst of both these heaps*/
reheapify(L, nil, L).
reheapify(nil, R, R).
reheapify(bt(L1, X1, R1), bt(L2, X2, R2), bt(L, X1, bt(L2, X2, R2))):-
    X1 =< X2,!,
    reheapify(L1, R1, L).
reheapify(bt(L1, X1, R1), bt(L2, X2, R2), bt(bt(L1, X1, R1), X2, R)):-
    reheapify(L2, R2, R).

/*Returns a sorted array*/
heapsort(Unsorted, Sorted):-
    list_to_bt(Unsorted, Bt),		/*Converts unsorted array to binary tree*/
    heapify(Bt, Heap),				/*Converts binary tree to heap*/
    remove_head(Heap, Sorted), !.	/*Returns sorted list from heap*/