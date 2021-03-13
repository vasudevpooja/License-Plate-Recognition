function alphabets=readLetter(snap)
load Temp 
snap=imresize(snap,[50 70]); 
y=[];
for n=1:length(Temp)
    x=corr2(Temp{1,n},snap); 
    y=[y x]; 
end
count=find(y==max(y));
display(count);
if count==1||count==2
    alphabets='A';
elseif count==3||count==4
    alphabets='B';
elseif count==5
    alphabets='C';
elseif count==6||count==7
    alphabets='D';
elseif count==8
    alphabets='E';
elseif count==9
    alphabets='F';
elseif count==10
    alphabets='G';
elseif count==11
    alphabets='H';
elseif count==12
    alphabets='I';
elseif count==13
    alphabets='J';
elseif count==14
    alphabets='K';
elseif count==15
    alphabets='L';
elseif count==16
    alphabets='M';
elseif count==17
    alphabets='N';
elseif count==18||count==19
    alphabets='O';
elseif count==20||count==21
    alphabets='P';
elseif count==22||count==23
    alphabets='Q';
elseif count==24||count==25
    alphabets='R';
elseif count==26
    alphabets='S';
elseif count==27
    alphabets='T';
elseif count==28
    alphabets='U';
elseif count==29
    alphabets='V';
elseif count==30
    alphabets='W';
elseif count==31
    alphabets='X';
elseif count==32
    alphabets='Y';
elseif count==33
    alphabets='Z';
elseif count==34
    alphabets='1';
elseif count==35
    alphabets='2';
elseif count==36
    alphabets='3';
elseif count==37||count==38
    alphabets='4';
elseif count==39
    alphabets='5';
elseif count==40||count==41||count==42
    alphabets='6';
elseif count==43
    alphabets='7';
elseif count==44||count==45
    alphabets='8';
elseif count==46||count==47||count==48
    alphabets='9';
else
    alphabets='0';
end
end