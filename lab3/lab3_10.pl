# vim: ft=prolog

a(0,K,Res) :- Res is K+1.
a(N,K,Res) :- N > 0, K = 0, N_temp is N-1, a(N_temp, 1, Res).
a(N,K,Res) :- N > 0, K > 0, K_temp is K-1, N_temp is N-1, a(N, K_temp, Res1), a(N_temp, Res1, Res).


% последовательность важна!
% так работает - a(N,K,Res) :- N > 0, K = 0, N_temp is N-1, a(N_temp, 1, Res).
% так нет - a(N,K,Res) :- N > 0, K = 0, a(N_temp, 1, Res), N_temp is N-1.
