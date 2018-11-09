-module(sample).
-export([base/1]).


base(A) ->
    B = A + 1,
    F = fun() -> C = A * B end,
    F(),
    C.
