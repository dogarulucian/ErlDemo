-module(erlangio).
-export([write_to_file/0]).

write_to_file()->
   Content = "Some content",   
   {ok,File}=file:open("test.txt",[write]),
   file:write(File,Content).




