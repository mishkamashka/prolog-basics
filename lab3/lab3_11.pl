% Для исходного списка создайте предикат, заменяющий первое
% вхождение заданного значения другим.

replace(Old, New, [Head|Tail], Res) :- Head = Old, Res = [New|Tail], !.

replace(Old, New, [Head|Tail], Res) :-
    replace(Old, New, Tail, Res1),
    Res = [Head|Res1].