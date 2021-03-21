% 15 Определить предикат, который для дерева T определят количество
% «листьев».


count_leaves(nil, Res) :- Res is 0.

count_leaves(tr(_, nil, nil), Res) :- Res is 1.

count_leaves(tree(_, nil, Right), Res) :- count_leaves(Right, Res).

count_leaves(tree(_, Left, nil), Res) :- count_leaves(Left, Res).

count_leaves(tr(_,Left,Right), Res) :- count_leaves(Left, Res1), count_leaves(Right, Res2), Res is Res1 + Res2.