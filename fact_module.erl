-module(fact_module).
-export([fact/1,duplicate/2,max/1]).

fact(0)->
	1;
fact(N) when N > 0 ->
	N*fact(N-1).

duplicate(0,_)->
	[];
duplicate(N,Term) when N>0 ->
	[Term|duplicate(N-1,Term)].

max([])->
	[];
max([H|T])->
	max(H,T).

max(Max,[])->
	Max;
max(Max,[H|T]) when H>Max->
	max(H,T);
max(Max,[_H|T])->
       max(Max,T).	
