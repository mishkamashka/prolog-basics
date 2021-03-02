# vim: ft=prolog

daughter(anna, vera).
daughter(vera, oleg).
daughter(olga, pavel).
daughter(olga, alla).
daughter(alla, lidia).
man(oleg).
man(victor).
man(pavel).

% queries to identify names of fathers, mothers, grandmothers and
% family members of families with mother, father and daughter.

not(P) :- (call(P) -> fail ; true).

%woman(X) :- not(man(X)).
% woman(X) :- \+man(X).

woman(X) :- man(X) -> fail ; true.

family(X,Y,Z) :- daughter(Z,Y), man(X).

fathers_names(X, Y) :- man(X), daughter(Y,X).

mothers_names(X, Y) :- daughter(Y,X), not(man(X)).

grandmothers_names(X,Z) :- daughter(Y,X), daughter(Z,Y), not(man(X)).
