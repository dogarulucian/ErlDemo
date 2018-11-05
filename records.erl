-module(records).
-compile(export_all).
-record(robot, {name, type=industrial,hobbies,details=[]}).
-record(master,{robot , mname="",id}).





print_record()->
    R=#robot{name="WallE",type=army},
    M=#master{robot=R}, 
    Name=(M#master.robot)#robot.name,
    io:fwrite("Robot name=~p and type=~p \n",[R#robot.name,R#robot.type]),
    io:fwrite("Name ~p \n",[Name]).





