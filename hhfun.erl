-module(hhfun).
-export([increment/1],[decrement/1]).

   decrement([]) -> [];
   decrement([H|T]) -> [H-1|decrement(T)].	

   increment([]) -> [];
   increment([H|T]) -> [H+1|increment(T)]. 




