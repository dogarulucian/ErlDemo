-module(book_ch2).
-export([factorial/1]).
%Factorial tail recursive example

factorial(0)-> 1;
factorial(N)->
   N * factorial( N-1).




