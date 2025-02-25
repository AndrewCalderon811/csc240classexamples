% coronavirus/4 

%           country     infection  deaths  recoveries
coronavirus(usa,        99681448, 1098387, 97251592).
coronavirus(india,      44661516,  530509, 44116492).
coronavirus(brazil,     34897510,  688444, 34085759).
coronavirus(uk,         23930041,  194704, 23602927).
coronavirus(russia,	    21468271,  390649, 20860277).
coronavirus(turkey,     16919638,  101203, 16818435).
coronavirus(france,     36971727,  157429, 36198265).
coronavirus(iran,        7558502,  144600,  7333139).
coronavirus(spain,      13529643,  115239, 13313832).
coronavirus(southkorea, 25919183,   29420, 25214865).
coronavirus(italy,      23642011,  179436, 23037464).
coronavirus(japan,      22706566,   47069, 20524855).
coronavirus(germany,    35823771,  154535, 34509500).
%           country     infection  deaths  recoveries

% population/2
population(usa,       331002651).
population(india,    1380004385).
population(brazil,    212559417).
population(uk,         67886011).
population(russia,    145964432).
population(turkey,     84339067).
population(france,     65273511).
population(iran,       83992949).
population(spain,      46754778).
population(southkorea, 51638809).

% rules
recovery_rate(Country, Rate) :- coronavirus(Country, Cases, _, Recoveries), 
                                Rate is Recoveries / Cases * 100.

mortality(Country, Rate) :- coronavirus(Country, Cases, Deaths, _),
                            Rate is Deaths / Cases * 100.

covid_percent(Country, Percent) :- coronavirus(Country, Cases, _, _),
                                   population(Country, Population),
                                   Percent is Cases / Population * 100.

% same/2 - if two variable have the same value, use the same name!
same(A,A).

% increment/2
increment(X, X1) :- X1 is X + 1.

% is_integer/1
is_integer(X) :- member(X, [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]).

% equation/3 - A + B = C
equation(A,B,C) :- is_integer(A), is_integer(B), C is A + B.
