
% Not finished
pair_reverse([], []) :- !.
pair_reverse([H | [SH | T]], [SH | [H | Ret]]) :- pair_reverse(T, Ret).


check_it(X, Y, A) :- X < Y, A is Y - X, !.
check_it(X, X, X) :- !.
check_it(X, Y, A) :- X > Y, A is X - Y, !.


cadr([_ | [T | _]], T) :- !.


my_append([], L, L).
my_append(L, [], L).
my_append([H|T], L, [H|AppendedTL] ) :- my_append(T, L, AppendedTL).



distance([X1 | Y1], [X2 | Y2], Result) :- Result is (Y2 - Y1) / (X2 - X1).

clean_list([], []).
clean_list([H | T], [H | Tret]) :- number(H), clean_list(T, Tret), !.
clean_list([_ | T], Ret) :- clean_list(T, Ret).


squares([], []).
squares([H | T], [HSqr | Tret]) :- number(H), HSqr is H * H, squares(T, Tret), !.
squares([_ | T], Ret) :- squares(T, Ret).

sum_squares([], 0).
sum_squares([H | T], Sum) :- number(H), sum_squares(T, Ret), Sum is H + Ret, !.
sum_squares([_ | T], Sum) :- sum_squares(T, Sum).

sum_list([], 0).
sum_list([H | T], Sum) :- sum_list(T, Tret), Sum is H + Tret.

get_values([], []).
get_values([[H | T1] | T2], [Ret | Tret]) :- sum_list([H | T1], Ret), get_values(T2, Tret).
get_values([H | T], [H | Tret]) :- number(H), get_values(T, Tret).

flattenit([],[]) :- !.
flattenit([[_ | IT] | T], Ret) :- flattenit(IT, ITRet), flattenit(T, TRet), append(ITRet, TRet, Ret), !.
flattenit([_ | T], Ret) :- flattenit(T, Ret).

nomatch([], [], []).
nomatch([_ | _], [], []).
nomatch([H | T1], [H | T2], Ret) :- nomatch(T1, T2, Ret).
nomatch([H1 | T1], [H2 | T2], [H1 | Ret]) :- H1 \= H2, nomatch(T1, T2, Ret).

fbscore(T, F, S, X, Score) :- X =< T, Score is (T * 6) + (F * 3) + (S * 2) + X.


:- write('clean_list:'), nl.
:- write('  clean_list([1,2,3], X): '), clean_list([1,2,3],X), write(X), nl.
:- write('  clean_list([1,a,2,b,3,c], X): '), clean_list([1,a,2,b,3,c],X), write(X), nl.
:- write('  clean_list([1,"a",2,"b",3], X): '), clean_list([1,"a",2,"b",3],X), write(X), nl.
:- nl.
:- write('squares:'), nl.
:- write('  squares([1,2,3], X): '), squares([1,2,3],X), write(X), nl.
:- write('  squares([1,a,2,b,3,c], X): '), squares([1,a,2,b,3,c],X), write(X), nl.
:- write('  squares([1,"a",2,"b",3], X): '), squares([1,"a",2,"b",3],X), write(X), nl.
:- nl.
:- write('sum_squares:'), nl.
:- write('  sum_squares([1,2,3], X): '), sum_squares([1,2,3],X), write(X), nl.
:- write('  sum_squares([1,a,2,b,3,c], X): '), sum_squares([1,a,2,b,3,c],X), write(X), nl.
:- write('  sum_squares([1,"a",2,"b",3], X): '), sum_squares([1,"a",2,"b",3],X), write(X), nl.
:- nl.
:- write('get_values:'), nl.
:- write('  get_values([1,2,3], X): '), get_values([1,2,3],X), write(X), nl.
:- write('  get_values([[1,2],3,4], X): '), get_values([[1,2],3,4],X), write(X), nl.
:- write('  get_values([[1,2],3,[4,5]], X): '), get_values([[1,2],3,[4,5]],X), write(X), nl.
:- nl.
:- write('nomatch:'), nl.
:- write('  nomatch([1,4,3,2,5], [1,2,3,4,5], X): '), nomatch([1,4,3,2,5], [1,2,3,4,5],X), write(X), nl.
:- write('  nomatch([1,2,3], [a,b,c], X): '), nomatch([1,2,3], [a,b,c],X), write(X), nl.
:- write('  nomatch([1,1,1,1,1], [2,3,4,5], X): '), nomatch([1,1,1,1,1], [2,3,4,5],X), write(X), nl.
:- write('  nomatch(1,2,3,4,5], [5,3], X): '), nomatch([1,2,3,4,5], [5,3],X), write(X), nl.
:- nl.
:- write('flattenit:'), nl.
:- write('flattenit([a,b,c,[d,e],f,[c, a, b]], X)'), flattenit([a,b,c,[d,e],f,[c, a, b]], X), write(X), nl.
:- write('flattenit([1,2,3,4,[5,6,[7,8]]], X)'), flattenit([1,2,3,4,[5,6,[7,8]]], X),  write(X), nl.
:- write('flattenit([1,2,[3,4,[5,6],7],8,[2,4,5,8]], X'), flattenit([1,2,[3,4,[5,6],7],8,[2,4,5,8]], X), write(X), nl.
:- nl.
