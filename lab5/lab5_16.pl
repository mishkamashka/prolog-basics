% 16 Определить предикат, который считывает все слова из файла и
% формирует из них список, длину списка выводит в другой файл.


read_f(File) :- open(File, read, Str), read_file(Str, Lines, Res), close(Str), write(Res).

read_file(Stream,[X|L], Res) :-
    \+ at_end_of_stream(Stream),
    read_line_to_string(Stream, X),
    read_file(Stream, L, Res1),
    make_res(X, Res1, Res), !.

read_file(Stream,[], []) :-
    at_end_of_stream(Stream).

make_res(X,L,Res) :- X = "", Res = L, !.
make_res(X,L,Res) :- rm_last_space(X, Res1), Res = [Res1|L], !. 

rm_last_space(String, Res) :- atom_chars(String, List), last(List, ' '), without_last(List, Res1), string_chars(Res, Res1), !.
rm_last_space(String, Res) :- Res = String.


without_last([_|[]], []).
without_last([Head|Tail], Res) :- without_last(Tail, Res1), Res = [Head|Res1].