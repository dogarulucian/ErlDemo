-module(erlangtut).
 
-export([hello_world/0]).

-export([tuple_show/0]).

-export([start/0]). 
-record(person, {name = "", id}). 

 
hello_world() -> io:fwrite("hello, world\n").


tuple_show()->
    P = {john,24,{june,25}} ,
    io:fwrite(" ~p~n", [P]).



start() -> 
   P = #person{name = "John",id = 1}, 
   io:fwrite("~p~n",[P#person.id]), 
   io:fwrite("~p~n",[P#person.name]).
