swap([X], [X]):- !.
swap([], []):- !.

swap(A, B) :-
    append([First | Mid], [Last], A),
    append([Last | Mid], [First], B),
    !.