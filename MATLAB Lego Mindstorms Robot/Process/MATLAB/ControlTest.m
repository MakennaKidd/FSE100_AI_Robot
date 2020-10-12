%brick = ConnectBrick('BRIK7');

global key
InitKeyboard();

while 1
    pause(0.1);
    switch key
        
     case 'z' %attack
            brick.MoveMotor('C',-100);
            pause(.1);
            brick.MoveMotor('C',100);
            pause(.1); %stops running for 1 second

            brick.MoveMotor('C',0);
        
            
            
            
            
        
        case 'uparrow' %main forward movement
            brick.MoveMotor('AB',-50);
            pause(.1); %stops running for 1 second
            
         case 'w' %turbo forward
            brick.MoveMotor('AB',-100);
            pause(.1); %stops running for 1 second
            
            
        case 'q'%left turn
            brick.MoveMotor('A',-100);
            brick.MoveMotor('B',100);
            pause(.1);
         %case 'uparrow' + 'leftarrow' %left turn 
           % brick.MoveMotor('A',100);
           % brick.MoveMotor('B',0);
           % pause(1); %stops running for 1 second   
            
         case 'e' %right turn
            brick.MoveMotor('A',100);
            brick.MoveMotor('B',-100);
            pause(.1);
            
         case 's' %turbo backwards
            brick.MoveMotor('AB',100);
            pause(.1); %stops running for 1 second 
            
       
        case 'r'%tone
            
            brick.playTone(100,50,500);
            pause(0.75);
            
            brick.playTone(100,50,500);
            pause(0.75);
            
            brick.playTone(100,50,500);
            pause(0.75);
            
            brick.playTone(100,10,400);
            pause(0.75);
            
            
        case 'downarrow' %main back
            brick.MoveMotor('AB',50);
            pause(.1); %stops running for 1 second
            
        
         case 'p' %Pause. e break
            brick.MoveMotor('ABC',0);
            
            
            
            
        case 'esc' %Press "q" to quit.
            brick.MoveMotor('AB',0);
            break;
            
    end
end