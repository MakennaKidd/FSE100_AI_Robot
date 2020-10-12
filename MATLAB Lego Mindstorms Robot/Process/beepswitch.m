display('Push the button to start the tone.')



while brick.TouchPressed(1)==1
    brick.playTone(10,300,600);
    display ('RELEASE button to turn tone OFF')
    pause(0);
end
display('Done')