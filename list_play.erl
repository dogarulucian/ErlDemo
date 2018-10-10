-module(list_play).
-export([start/0]).

start()->
   L1=[123,xyz],
   L2=[123, def, abc],
   L3=[a,[b,[c,d,e],f,g]],
   io:fwrite("~p~n",[L3]).
  %io:fwrite("~p~n",[length(L3)]).

