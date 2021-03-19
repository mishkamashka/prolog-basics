# vim: ft=prolog

f1(X,Y,Z) :- Z is X^3 + sin(Y^2) + 5.83/Y.
f2(X,Y,Z) :- Z is +(+((^(X,3)),sin(^(Y,2))), /(5.83,Y)).
f3(X,Y,Z) :- Z is (^(X,3)) + sin(^(Y,2)) + /(5.83,Y).