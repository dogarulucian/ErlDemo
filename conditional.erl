-module(conditional).
-export([test/1,test2/1,temp/1,guess/1]).
-export([insert/2,beach/1, append/2,recursive_sum/1, beachf/1]).

insert(X,[]) ->
    [X];
insert(X,Set) ->
    case lists:member(X,Set) of
        true  -> Set;
        false -> [X|Set]
    end.


append([H|T], Tail) ->
    [H|append(T, Tail)];
append([], Tail) ->
    Tail.



test(V)
   when
     %when  , used in pattern match  is && 
     %when ; used in pattern match  is ||  
     V >= 16 ;
     V=< 90 -> true;
test(_)->
   false.
   


beach(Temperature) ->
case Temperature of
	{celsius, N} when N >= 20, N =< 45 ->
		'favorable';
{kelvin, N} when N >= 293, N =< 318 ->
		'scientifically favorable';
{fahrenheit, N} when N >= 68, N =< 113 ->
		'favorable in the US';
_ ->
		'avoid beach'
end.


beachf({celsius,N})when 
       N>=20 andalso  N=<45 -> 'favorable';
beachf({kelvin,N}) when 
       N>= 293 andalso N=<318-> 'scientifically favorable';
beachf(_)->'avoid brach'.


recursive_sum([H|T]) -> H+recursive_sum(T);
recursive_sum([])    -> 0.  


test2({celsius,N})when
     N>=20 orelse N=<45 ->'favorable';
test2({kelvin,N}) when
     N>=293 orelse N=<318->'Kelvin';
test2(_)->'something else'.
  

temp(Temp)->
case Temp of
    celsius -> 'EU';
    kelvin ->'US'

end.



guess(Nr) when 
    Nr =:= 3 ->'win';
guess(Nr) when
    Nr =<3 -> 'you loose';
guess(_)->"Try again".   
