-module(records).
-compile(export_all).
-record(robot, {name, type=industrial,hobbies,details=[]}).
-record(master,{robot , mname="",id}).
-define(
   Robots,
   [
     #robot{name="Walle2", type=army_robot},
     #robot{name="Terminator",type=war_robot}

    ]
 
).




print_record()->
    RList = ?Robots,
    Second = lists:nth(2,RList), 
    %SecondL = list(),
    %Len = length(Second),
    io:fwrite("Sec  ~p \n",[Second]),
    R=#robot{name="WallE",type=army},
    M=#master{robot=R}, 
    Name=(M#master.robot)#robot.name,
    io:fwrite("Robot name=~p and type=~p \n",[R#robot.name,R#robot.type]),
    io:fwrite("Name ~p \n",[Name]),
    io:fwrite("Time ~p \n", [time()]).





