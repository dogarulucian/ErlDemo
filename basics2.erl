%%%-------------------------------------------------------------------
%%% @author Lucian
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 16. Oct 2018 10:50 AM
%%%-------------------------------------------------------------------
-module(basics2).
-author("lucian").

%% API
-export([member/2, double/1]).

double(List) ->
  double_acc(List, []).

double_acc([H | T], Acc) ->
  double_acc(T, [2 * H | Acc]);
double_acc([], Acc) ->
  Acc.


%% member

member(H, [H | _T]) ->
  io:fwrite("~p~n",[_T]),
  true;
member(H1, [_H2 | T]) ->
  member(H1, T);
member(_H1, []) ->
  false.
