
% Not finished
pair_reverse([], []) :- !.
pair_reverse([H | [SH | T]], [SH | [H | Ret]]) :- pair_reverse(T, Ret).


check_it(X, Y, A) :- X < Y, A is Y - X, !.
check_it(X, X, X) :- !.
check_it(X, Y, A) :- X > Y, A is X - Y, !.


cadr([_ | [T | _]], T) :- !.


remove_them([], _, []) :- !.
remove_them() :-