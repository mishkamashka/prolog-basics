# vim: ft=prolog

sister(ann, ben).
sister(ben, ann).
sister(ann, lia).
sister(lia, ann).

mother(lia, bob).
father(ben, adam).

aunt(X,Y) :- sister(X, Z), (father(Z,Y); mother(Z,Y)).

?- aunt(_,bob).
% надо нажмать ; чтобы листались результаты, halt. - exit 

