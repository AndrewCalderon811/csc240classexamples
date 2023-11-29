
states(TX, OK, LA, MS, AR) :- 
        member(TX, ['red', 'green', 'blue']),
        member(OK, ['red', 'green', 'blue']),
        member(LA, ['red', 'green', 'blue']),
        member(MS, ['red', 'green', 'blue']),
        member(AR, ['red', 'green', 'blue']),
        TX \= OK,
        TX \= LA,
        TX \= AR,
        OK \= AR,
        AR \= LA,
        AR \= MS,
        LA \= MS.


myabs(X, Y) :- X < 0, Y is X * -1, !.
myabs(X, X).
manhattan([H1 | T1], [H2 | T2], Ret) :- myabs(H2 - H1, X), myabs(T2 - T1, Y),  Ret is X + Y.


split_after([H | T], 1, [H], T) :- !.
split_after([H | T], Index, [H | Hret], Tret) :- Index > 1, Ind1 is Index - 1, split_after(T, Ind1, Hret, Tret).

my_append([], L, L).
my_append(L, [], L).
my_append([H|T], L, [H|AppendedTL] ) :- my_append(T, L, AppendedTL).
squish([],[]) :- !.
squish([[H | IT] | T], TrueRet) :- squish(IT, ITRet), squish(T, TRet), my_append(ITRet, TRet, Ret), sort([H | Ret], TrueRet), !.
squish([H | T], TrueRet) :- squish(T, Ret), sort([H | Ret], TrueRet).


eval_term([C | E], X, R) :- E > 1, !, EE is E - 1, XX is X * X, eval_term([C | EE], XX, R).
eval_term([C | 1], X, R) :- R is X * C.
eval_term([C | 0], _, C).

eval_poly([], _, 0).
eval_poly([H | T], X, R) :- 
        eval_term(H, X, TR), 
        eval_poly(T, X, PR), 
        R is PR + TR, !.

:- dynamic f/2.
gen_poly(Lst) :- asserta(
        f(Input, Output) :- eval_poly(Lst, Input, Output)).





:- states(TX,OK,LA,MS,AR), 
        write(['  states1:', 'TX', TX, ' OK', OK, ' LA', LA, ' MS', MS, ' AR', AR]), nl.
:- states(TX,OK,LA,MS,AR), TX = blue, 
        write(['  states1:', 'TX', TX, ' OK', OK, ' LA', LA, ' MS', MS, ' AR', AR]), nl.
:- nl, write('manhattan/3:'), 
        write(' '), manhattan([-4 | -4], [2 | 2], X), write(X),
        write('  '), manhattan([1 | 7], [4 | 11], Y), write(Y),
        write('  '), manhattan([-2 | 8], [3 | -4], Z), write(Z), nl.
:- nl, write('split_after/4:'),
        write('  '), split_after([a,b,c],2,X,Y), write(X), write(Y), 
        write('  '), split_after([a,b,c,d,e,f,g,h],5,A,B), write(A), write(B), nl.
:- nl, write('squish/2:'), nl.
:- write(' '), squish([a,b,c,d,e,f],X), write(X),
        write(' '), squish([1,1,9,2,2,3,4,[5,6,[7,8],1,[2,4],9]],Y), write(Y), nl.
:- write(' '), squish([[2,4,6,8],1,2,[3,4,[5,6],7],8,9,[1,[2]]],X), write(X),
        write(' '), squish([[7],[8,7,1,5,4,5],[7,5,3,6,3,2]], Y), write(Y), nl.
:- nl, write('Polynomials:'), nl.
:- write('  eval_term: '), eval_term([1 | 1],2,X), write(X), 
        write(' '), eval_term([3 | 2],5,Y), write(Y), nl.
:- write('  eval_poly: '), eval_poly([[3 | 2]],5, X), write(X),
        write('  '), eval_poly([[1 | 2], [2 | 1], [3 | 0]],1, Y), write(Y),
        write('  '), eval_poly([[1 | 2], [2 | 1], [3 | 0]],2, Z), write(Z),
        write('  '), eval_poly([[2 | 3], [3 | 2], [7 | 1], [9 | 0]],5,K), write(K), nl.
:- retractall(f(_X,_Y)).   % make sure f/2 is not already defined
:- write('  gen_poly1: '), gen_poly([[1 | 2], [2 | 1], [3 | 0]]), f(2,X), write(X),
        write('  '), f(5,Y), write(Y), nl.
:- retractall(f(_X,_Y)).   % retract f/2 defined above
:- write('  gen_poly2: '), gen_poly([[2 | 3], [3 | 2], [7 | 1], [9 | 0]]), f(1,X), write(X),
        write('  '), f(5,Y), write(Y).
