-module(script_test).
-export([main/1]).



main(X)->
   Fun = fun (X)  when X >=5 ->gt; (X) -> lt end,
   Fun(X).



