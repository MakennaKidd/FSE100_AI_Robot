%brick - ConnectBrick(_______); %only run once


brick,MoveMotor('A',50);
pause(5); %pauses the script for 5 seconds

brick,MoveMotor('A',-50);
pause(5); %pauses the script for 5 seconds

brick.StopMotor('A');

