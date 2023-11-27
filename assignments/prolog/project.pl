% Texas borders - OK, AR, LA
% Oklahoma borders - TX, AR
% Arkansas borders - TX, OK, MI, LA
% Lousiana borders - TX, AR, MI
% Mississippi borders - LA, AR

% Order - TX, OK, LA, MI, AR
% Valid colors - Red, Green, Blue
% Solution : Red, Green, Green, Red, Blue

color(red).
color(green).
color(blue).

states(R, G, G, R, B) :- color(R), color(G), color(B), !.

myabs(X, Y) :- X < 0, Y is X * -1, !.
myabs(X, X) :- !.
manhattan([H1 | T1], [H2 | T2], Ret) :- Holder is (H2 - H1) + (T2 - T1), myabs(Holder, Ret).

% split_after(Lst, Index, Car, Cdr)












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
