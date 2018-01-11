function [xyzir] = loadpcdvelo(fpath)
%loadpcdvelo - loads pcd X Y Z I R data from velodyne pcd files
% input: filepathname
% output: xyzir
narginchk(1,1)

fid = fopen(fpath);
for i = 1:11 % first 11 lines of velodyne pcd is garbage
    line = fgets(fid); 
end
  xyzir = []; % intialize
while ischar(line)
  xyzir = [xyzir; str2num(line)];
  line = fgets(fid);
end
   fclose(fid);






end