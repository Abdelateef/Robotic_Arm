%% load map and inflate it
load('Maze1.mat');
map= binaryOccupancyMap(M,5);
%inflatedmap=copy(map);
%inflate(inflatedmap,10);
%subplot(121),show(map)
%subplot(122),show(inflatedmap)

%% Genrate Roadmaps with intial paramters
prm = mobileRobotPRM;
prm.NumNodes=50;
prm.ConnectionDistance=80;
prm.Map = map;
show(prm)

%% Query the Prm Method 
disp('click the start loacation')
startlocation = ginput(1);
disp('click the end loacation')
endlocation = ginput(1);
path = findpath(prm,startlocation,endlocation);
show(prm)

while isempty(path)
    prm.NumNodes= prm.NumNodes + 10;
    update(prm);
    path=findpath(prm,startlocation,endlocation);
    show(prm)
    pause(1);
end 
show(prm)