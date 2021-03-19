# vim: ft=prolog

find_const(X1, Y1, X2, Y2, A, B, C) :-
	findA(Y1, Y2, A),
	findB(X1, X2, B),
	findC(X1, Y1, X2, Y2, C).

findA(Y1, Y2, A) :- A is Y2 - Y1.
findB(X1, X2, B) :- B is X1 - X2.
findC(X1, Y1, X2, Y2, C) :- C is Y1*X2 - X1*Y2.