-module(arrays_test).
-export([main/0]).



main()->
  % X=array:new(5,{deafult, 0}),
   Y=array:set(0,121,array:new()),
   io:fwrite("~p~n",[array:get(2,Y)]).
   
