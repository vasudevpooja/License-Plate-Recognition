A=imread('Images-Number Plates/A.bmp');B=imread('Images-Number Plates/B.bmp');C=imread('Images-Number Plates/C.bmp');
D=imread('Images-Number Plates/D.bmp');E=imread('Images-Number Plates/E.bmp');F=imread('Images-Number Plates/F.bmp');
G=imread('Images-Number Plates/G.bmp');H=imread('Images-Number Plates/H.bmp');I=imread('Images-Number Plates/I.bmp');
J=imread('Images-Number Plates/J.bmp');K=imread('Images-Number Plates/K.bmp');L=imread('Images-Number Plates/L.bmp');
M=imread('Images-Number Plates/M.bmp');N=imread('Images-Number Plates/N.bmp');O=imread('Images-Number Plates/O.bmp');
P=imread('Images-Number Plates/P.bmp');Q=imread('Images-Number Plates/Q.bmp');R=imread('Images-Number Plates/R.bmp');
S=imread('Images-Number Plates/S.bmp');T=imread('Images-Number Plates/T.bmp');U=imread('Images-Number Plates/U.bmp');
V=imread('Images-Number Plates/V.bmp');W=imread('Images-Number Plates/W.bmp');X=imread('Images-Number Plates/X.bmp');
Y=imread('Images-Number Plates/Y.bmp');Z=imread('Images-Number Plates/Z.bmp');
one=imread('Images-Number Plates/1.bmp');two=imread('Images-Number Plates/2.bmp');
three=imread('Images-Number Plates/3.bmp');four=imread('Images-Number Plates/4.bmp');
five=imread('Images-Number Plates/5.bmp'); six=imread('Images-Number Plates/6.bmp');
seven=imread('Images-Number Plates/7.bmp');eight=imread('Images-Number Plates/8.bmp');
nine=imread('Images-Number Plates/9.bmp'); zero=imread('Images-Number Plates/0.bmp');
alphabets=[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z];
numericals=[one two three four five six seven eight nine zero];
Temp=[alphabets numericals];
save ('Temp','Temp')
clear all;