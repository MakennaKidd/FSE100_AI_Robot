

display('Push the button.')
%brick.TouchPressed(1)
while brick.TouchPressed(1)==0
    brick.playTone(10,1000,800);
    pause(0.75);
end

while brick.TouchPressed(1)==0
    brick.playTone(10,100,800);
    pause(0.75);
end

while brick.TouchPressed(1)==0
    brick.playTone(10,10,800);
    pause(0.75);
end

while brick.TouchPressed(1)==0
    brick.playTone(10,1,800);
    pause(0.75);
end

display('Done!')
    