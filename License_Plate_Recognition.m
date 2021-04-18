close all;
clear all;
im = imread('Images-Number Plates/Third Image.png');
imgray = rgb2gray(im);
imbin = imbinarize(imgray);
im = edge(imgray, 'prewitt');
Iprops=regionprops(im,'BoundingBox','Area','Image');
area = Iprops.Area;
count = numel(Iprops);
maxa= area;
boundingBox = Iprops.BoundingBox;
for n=1:count
   if maxa<Iprops(n).Area
       maxa=Iprops(n).Area;
       boundingBox=Iprops(n).BoundingBox;
   end
end    
im = imcrop(imbin, boundingBox);
im = bwareaopen(~im, 100);
 [p,q] = size(im);
imshow(im);
Iprops=regionprops(im,'BoundingBox','Area','Image');
count = numel(Iprops);
noPlate=[];
for n=1:count
   a = length(Iprops(n).Image(1,:));
   b = length(Iprops(n).Image(:,1));
   if a<(p/2)&b>(p/3)
       alphabets=Letter_detection(Iprops(n).Image); 
       noPlate=[noPlate alphabets] 
   end
end 
