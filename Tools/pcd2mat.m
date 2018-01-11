%This script converts all ASCII PCD files into a MAT file for use in MATLAB
clear
files = dir('*.pcd');


for i = 1:length(files)
    
    data = loadpcdvelo(files(i).name);
    savename = strcat(int2str(i),'.mat');
    save(savename,'data')
    
end
