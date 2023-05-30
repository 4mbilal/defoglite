clear all
close all
clc

files = dir('images');

for i=3:numel(files)
    fullpath = [files(i).folder,'\',files(i).name];
    img = single(imread(fullpath));
    [Ydefogged,t2,AirLight] = DefogLite(img,0.95);
    imgDisp = cat(2,uint8(img),uint8(Ydefogged));
    imshow(imgDisp)
    drawnow
    pause(1)
end
