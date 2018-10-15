
%%%-------------------------------------------------------------------
%%% 
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Oct 2018 12:29 PM
%%%-------------------------------------------------------------------
-module(basics_first).
-author("test1").

%% API
-export([avg/1, even/1]).

%% avg(1,2,3) => 2

avg(List) when is_list(List) ->
  sum(List) / len(List);
avg(_NotList) ->
  io:fwrite("Expecting a list parameter", []).


sum(List) ->
  sum_acc(List, 0).

len(List) ->
  len_acc(List, 0).

sum_acc([H | T], Acc) ->
  sum_acc(T, H + Acc);
sum_acc([], Acc) ->
  Acc.

len_acc([_H | T], Acc) ->
  len_acc(T, Acc + 1);
len_acc([], Acc) ->
  Acc.

%% even[1,2,3,4] => [2,4]
even(List) when is_list(List) ->
  even_acc(List, []);
even(_NotAList) ->
  io:fwrite("Expecting a list parameter", []).

even_acc([H | T], Acc) when H rem 2 == 0 ->
  even_acc(T, [H | Acc]);
even_acc([_H | T], Acc) ->
  even_acc(T, Acc);
even_acc([], Acc) ->
  Acc.
