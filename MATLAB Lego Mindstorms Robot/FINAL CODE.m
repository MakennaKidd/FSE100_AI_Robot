%brick = ConnectBrick('BRIK7'); % run only once
brick.StopMotor('B');
brick.StopMotor('A');
brick.SetColorMode(3, 2); 
color = brick.ColorCode(3); 
brick.TouchPressed(2);
distance = brick.UltrasonicDist(1);
stop1count = 0;
stop2count = 0;
stopsign = 0;

% ================= COLOR KEY ================= 

% 0 = No Color(Unknown)
% 1 = Black
% 2 = Blue
% 3 = Green
% 4 = Yellow
% 5 = Red
% 6 = White
% 7 = Brown

global key
InitKeyboard();

while 1
    brick.SetColorMode(3, 2); 
    distance = brick.UltrasonicDist(1);
    color = brick.ColorCode(3);
    pause(0.1);
    switch key
        case 0
            
% ================= STOP SIGN ================= 

                if color == 5
                disp ('Stop Sign');
                brick.StopMotor('B');
                brick.StopMotor('A');
                pause (5);
                end
           
% ================= Turn around corner =================   

            while (distance > 50)
            disp('Major turn');
            brick.MoveMotor('B',60);                    
            brick.MoveMotor('A',60);
            pause(.10);
            brick.MoveMotor('B',70);                    
            brick.MoveMotor('A',-70);
            pause(.75);
            brick.MoveMotor('B',60);                    
            brick.MoveMotor('A',60);
            pause(1);
            break
            end
    
% ================= Too far from wall =================  

            while(distance > 21 && distance <= 50)
            disp('Wall is too far, readjust');
            brick.MoveMotor('B',30);
            brick.MoveMotor('A',-30);
            pause (.2);
            brick.MoveMotor('B',50);
            brick.MoveMotor('A',50);
            pause (.5); 
            break
            end

% ================= Too close to wall =================  
            
            while (distance < 10) 
            disp('Wall is too close,readjust');
            brick.MoveMotor('B',-50);
            brick.MoveMotor('A',50);
            pause (.5);
            brick.MoveMotor('B',50);
            brick.MoveMotor('A',50);
            pause (.25); 
            break
            end

% ================= Normal movement ================= 

            while (distance >= 10 && distance < 20)
            disp('Wall within range, normal forward movement');
            disp (distance);
            brick.MoveMotor('B',50);
            brick.MoveMotor('A',50);
            break
            end

% ================= Button turn ================= 

            while (brick.TouchPressed(2)==1)
            disp('Button is bring pressed');                             
            brick.MoveMotor('B',-50);                    
            brick.MoveMotor('A',-25);
            pause(1);
            brick.MoveMotor('B',-50);                    
            brick.MoveMotor('A',50);
            pause(1);
            break
            end

% ================= STOP #1 GREEN =================

            if color == 3
                color = brick.ColorCode(3);
                stop1count = stop1count + 1;
                disp ('Green Count:');
                disp(stop1count);
                while stop1count == 2
                disp ('Loading/Unloading Zone #1');
                brick.StopMotor('B');
                brick.StopMotor('A');
                pause (5);
                stop1count = 0;
                break 
                end
                
            end
% ================= STOP #2 BLUE ================= 

            if color == 2
                color = brick.ColorCode(3);
                stop2count = stop2count + 1;
                disp ('Blue Count:');
                disp(stop2count);
                while stop2count == 10
                disp ('Loading/Unloading Zone #2');
                brick.StopMotor('B');
                brick.StopMotor('A');
                pause (5);
                stop2count = 0;
                break 
                end
                
            end           
            
% ================= Quit =================             
            
        case 'q'
            disp('Quit');
            brick.StopMotor('B');
            brick.StopMotor('A');
            brick.MoveMotor('C', 0); 
            break
            
% ================= Keyboard Control =================  

        case 'k'
            disp ('Keyboard Control Active');
            while 1
            pause(.1);   
            switch key
                
                case 0
                    disp('Keyboard is inactive');
                    brick.MoveMotor('B',0);
                    brick.MoveMotor('A',0);
                    
                case 'z' 
                    disp ('Open');
                    brick.MoveMotor('C',-50);
                    
                case 'x'
                    disp ('Close');
                    brick.MoveMotor('C',20);
                    
                case 'w'
                    disp('Forward');
                    brick.MoveMotor('B',50);
                    brick.MoveMotor('A',50);
                    
                case 'a'
                    disp('Left');
                    brick.MoveMotor('B',50);
                    brick.MoveMotor('A',-50);
                    
                case 's'
                    disp('Down');
                    brick.MoveMotor('B',-50);
                    brick.MoveMotor('A',-50);
                    
                case 'd'
                   disp('Right'); 
                    brick.MoveMotor('B',-50);
                    brick.MoveMotor('A',50); 
                    
                case 'q'
                    disp('Deactivating Keyboard Control');
                    break
                    
            end
            end
    end
    

            
end
    
