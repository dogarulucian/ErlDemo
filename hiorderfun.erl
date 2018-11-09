-module(hiorderfun).
%-export([add/2]).
-compile(export_all).
 
one() -> 1.
two() -> 2.
 
add(X,Y) -> X() + Y().



