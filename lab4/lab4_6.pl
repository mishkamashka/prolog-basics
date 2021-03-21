% 6 Определить предикат, который для двух деревьев S и T определяет
% является ли S непустым поддеревом T .

check(Tree1, Tree2):- Tree1 = Tree2, !.
check(tr(_,Left,Right), Tree2) :- check(Left, Tree2); check(Right,Tree2).

% ?- check(tr(5,tr(7,tr(9,nil,nil),tr(8,nil,nil)),tr(6,nil,tr(4,tr(3,nil,nil),tr(1,nil,nil)))), tr(4,tr(3,nil,nil),tr(1,nil,nil))).