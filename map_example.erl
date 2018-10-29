-module(map_example).
-export([map_test/0]).



map_test()->
  %Fun = fun(K,V1) when is_list(K) -> V1*2 end,
   %Map = #{"k1" => 1, "k2" => 2, "k3" => 3},
   %maps:take("k3",Map),
   %M2=maps:update("k2", 24, Map),
   %Fun = fun(_Val)-> 100 end,
   %M2=maps:update_with("k3",Fun,Map),
   %io:fwrite("~p~n",[M2]),
   %T= maps:to_list(Map),
   %io:fwrite("~p~n",[T]).
   %,maps:size(Map).
   %maps:map(Fun,Map),
   %maps:size(Map).

   Map1 = #{a => "test", b => 2, c => "c"},
   Map2 = #{a => 23, d => "D"},
   Map3 = maps:merge(Map1, Map2),
   io:fwrite("~p~n",[Map3]). 
