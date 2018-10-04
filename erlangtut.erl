-module(erlangtut).
 
-export([hello_world/0]).

-export([tuple_show/0]).

-export([start/0]).

-include("user.hrl").

-export([display_employee/0]).


-export([start_proc/0]).
 
-export([server/1]).

-record(person, {name = "", id}). 

 
hello_world() -> io:fwrite("hello, world\n").


tuple_show()->
    P = {john,24,{june,25}} ,
    io:fwrite(" ~p~n", [P]).



start() -> 
   P = #person{name = "John",id = 1}, 
   io:fwrite("~p~n",[P#person.id]), 
   io:fwrite("~p~n",[P#person.name]).


display_employee() ->
    T = #employee{name="Flo", id=12},
    io:fwrite(" ~p~n",[T#employee.name]).   
 
start_proc()->
    Pid1=spawn(fun() -> server("Hello") end),
    Pid2=spawn(fun()->server("Bye") end), 
    %Pid1!{self(),hello},
    Pid1!Pid2!
    %Pid2!{self(),bye}

server(Message) ->
   io:fwrite("~p",[Message]).





