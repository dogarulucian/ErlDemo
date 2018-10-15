-module(list_comp_ex).
-export([test/0]).





test()->
%List Comprehension
   L1 = [1,2,3],
%[X*2||X <- L1].
  [X*2||X <- L1, X<3]. 
