% 6 Определить предикат, который возвращает строку, получаемую из
% исходной строки удалением всех вхождений заданной подстроки.

rm_substr(String, Substring, Res) :- has_substring(String, Substring), re_replace(Substring, '', String, Res1), rm_substr(Res1, Substring, Res), !.
rm_substr(String, Substring, Res) :- Res = String.

has_substring(String, Substring) :-
  atom_chars(String,List1), atom_chars(Substring,List2), is_sublist(List1, List2).

is_sublist( List, Sublist ) :-
    append( [_, Sublist, _], List ).

% re_replace(+Pattern, +With, +String, -NewString).