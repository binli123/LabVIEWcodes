clear all;
scanPoints = 5120;
totalPoints = 7296;
ticksRate = 5000000;
dwellTicks = 20;
resolution = 512;
resolutionFactor = resolution/256;
lineTicks = dwellTicks*resolutionFactor*resolution;
dwellTime = dwellTicks*2*10^(-7);
frameTime = resolution*resolution*dwellTime;
nXa = 0.5*3276.800048828+32768;
nXb = -0.6*3276.800048828+32768;
nYa = (1/resolution*0-0.5)*3276.800048828+32768;
nYb = (1/resolution*resolution-0.5)*3276.800048828+32768;
nx1 = linspace(nXb,nXa,5248);
nx2 = linspace(nXa,nXb,1024);
nx3 = linspace(nXb,nXb,1024);
nx = [nx1 nx2 nx3];
ny = linspace(nYa,nYb,resolution);
nx = uint16(nx);
ny = uint16(ny);
fid = fopen('waveX.txt','wt');
fprintf(fid,'%g\n',nx);       
fclose(fid);
fid = fopen('waveY.txt','wt');
fprintf(fid,'%g\n',ny);       
fclose(fid);

% % nxx = nx;
% % for i=1:resolution;
% %     nxx = [nxx nx];
% % end
% % [m,n] = size(nx);
% % nxxyy = zeros(2,n*resolution);
% % t=0;
% % for i=1:resolution;
% %     for j=1:n
% %         nxxyy(1,j+(i-1)*n) = uint16(nx(j));
% %         nxxyy(2,j+(i-1)*n) = uint16(ny(i));
% %         t = t+1;
% %     end
% % end
% idealLineTime = dwellTime*resolution*resolutionFactor;
% idealFrameTime = idealLineTime*resolution*resolutionFactor;
% % fid = fopen('b.txt','wt');
% % fprintf(fid,'%g\n',nxxyy);       
% % fclose(fid);
% fid = fopen('wave.txt','wt');
% fprintf(fid,'%g\n',uint16(nx));       
% fclose(fid);



