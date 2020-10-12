  
brick.MoveMotor('A',50);
pause(5);%pauses for 5 seconds
brick.MoveMotor('A',-50);
pause(5);%pauses for 5 seconds



brick.MoveMotor('B',-50);
pause(5);%pauses for 5 seconds
brick.MoveMotor('B',50);
pause(5);%pauses for 5 seconds
brick.StopMotor('B');
brick.StopMotor('A');
%brick.MoveMotor('B',100);
%brick.StopMotor('B');
