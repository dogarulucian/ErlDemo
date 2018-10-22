-module(erlangio).
-export([get_time/0,write_to_file/0,read_from_file/0, read_from_file2/0, get_sys_var/0]).

write_to_file()->
   Content = "Some content\n",   
   {ok,File}=file:open("test.txt",[write]),
   file:write(File,Content).


read_from_file()->
   {ok,File2}=file:open("test.txt",[read]),
   Content = file:read(File2,1024 * 1024),
   io:fwrite("~p~n",[Content]).


read_from_file2()->
   Text = file:read_file("test.txt"),
   io:fwrite("~p~n",[Text]).

get_sys_var()->
   os:getenv("PATH").

get_time()->
  Current = calendar:local_time(),
  io:fwrite("~p~n",[Current]),
  {{Year,Month,Day},{Hour,Minute,Sconds}} = Current,
  io:fwrite("~p~p~p~n",[Day,Month,Year]).
  
  


