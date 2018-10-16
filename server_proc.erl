%%% The core of the app: the server in charge of tracking processes.
-module(server_proc).
-behaviour(gen_server).
-include_lib("stdlib/include/ms_transform.hrl").
 
-export([start_link/0, stop/0, register/2, unregister/1, whereis/1,
get_names/0]).
-export([init/1, handle_call/3, handle_cast/2, handle_info/2,
code_change/3, terminate/2]).
 
%%%%%%%%%%%%%%%%%
%%% INTERFACE %%%
%%%%%%%%%%%%%%%%%
start_link() ->
gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).
 
stop() ->
gen_server:call(?MODULE, stop).
 
%% Give a name to a process
register(Name, Pid) when is_pid(Pid) ->
gen_server:call(?MODULE, {register, Name, Pid}).
 
%% Remove the name from a process
unregister(Name) ->
gen_server:call(?MODULE, {unregister, Name}).
 
%% Find the pid associated with a process
whereis(Name) -> ok.
 
%% Find all the names currently registered.
get_names() -> ok.
