% 11 Определить предикат, который выводит содержимое файла в
% консоль.

% можно еще удалять последние пробелы в строках

read_f(File) :- open(File, read, Str), read_file(Str, Lines, Res), close(Str), write(Res).

read_file(Stream,[X|L], Res) :-
    \+ at_end_of_stream(Stream),
    read_line_to_string(Stream,X),
    read_file(Stream,L, Res1),
    make_res(X,Res1,Res), !.

read_file(Stream,[], []) :-
    at_end_of_stream(Stream).

make_res(X,L,Res) :- X = "", Res = L, !.
make_res(X,L,Res) :- Res = [X|L], !. 

