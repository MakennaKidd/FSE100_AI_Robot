%brick = ConnectBrick('BRIK7');

brick,MoveMotor('A',100);
brick,MoveMotor('B',-100);
pause(5); %runs for 5 seconds

brick,MoveMotor('AB',0);
pause(1); %stops running for 1 second

brick,MoveMotor('A',50);
pause(10); 

brick,MoveMotor('B',0);
pause(5);
brick,MoveMotor('B',50);
pause(5); 

brick,MoveMotor('AB',0); %stops both motors





