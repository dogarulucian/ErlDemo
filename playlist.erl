-module(playlist).

-export([start/0]).


start()->
   L1=[123,xyz],
   L2=[123, def, abc],
   L3=[a,[b,[c,d,e],f,g]],
   io:fwrite("~p~n",[L3]),
%Pattern matching
%Tuple example
   {B,C,D}={10,foo, bar},
   io:fwrite("~p~n",[C]),
   {E,E,bar}={foo,foo,bar},
   io:fwrite("~p~n", [{E,bar}]), 
%List example
   [H|T]=L2,
   io:fwrite("~p Head of the list~n",[H]),
   io:fwrite("~p Tail of the list~n", [T]),
   [A,B|C]=[1,2,3,4,5,6,7],
   io:fwrite("~p~n",[C]).
