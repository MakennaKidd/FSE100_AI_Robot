


%%example 1:play tone and get battery level

%play tone with frequency 800hz and for 500ms
brick.playTone(10,800,500);

%get current battery level
v = brick.GetBattVoltage()

%brick = ConnectBrick('BRIK7');

%switch sensor
brick.TouchPressed(1)


