-module(touples).
-export([start/0]).


start()->
   Point={4,5},
   %{X,Y} = Point,
   io:fwrite("~p~n",[Point]),
   io:fwrite("~n",[]).
   






