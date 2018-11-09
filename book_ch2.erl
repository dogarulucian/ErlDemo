-module(book_ch2).
-export([factorial/1]).

factorial(0)-> 1;
factorial(N)->
   N * factorial( N-1).




