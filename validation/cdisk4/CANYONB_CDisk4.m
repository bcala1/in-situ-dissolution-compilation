clear,clc;
% Include dependencies
addpath('/Users/ben/Dropbox/PhD/canyon-b/CANYON-B/'); % CANYONB.m
addpath('/Users/ben/Dropbox/PhD/canyon-b/CO2SYS/'); % CANYONB.m dependencies
%addpath('D:/NIOZ/backup/gsw/'); % gsw_t_from_CT.m
%addpath('D:/NIOZ/backup/gsw/library/'); %gsw_t_from_CT.m dependencies
tic
% Load WOA variables
m = readmatrix('data/cdisk4_forCANYONB.csv', ...
    Delimiter=",");

lat = m(:,1);
lon = m(:,2);
depth = m(:,3);
pres = m(:,4);
insitu_temp = m(:,5);
sal = m(:,6);
doxy = m(:,7);
year = m(:,8);
month = m(:,9);

%this is the resulting matrix
headers = ["Latitude", "Longitude", "Depth", "Pressure", ...
    "InSitu_Temperature", "Salinity", "DissolvedOxygen", "Year", "Month", ...
    "Nitrate", "Phosphate", "Silicate", "Alkalinity", "DIC", 'pH'];

save_mat = nan(length(m(:,1)), length(headers));
writematrix(headers, "data/cdisk4_canyonb_results.csv");

% if expedition didn't have a month, I am using January
% year, month, day, hour, minute, second (all the same length of arrays)
time_stamp = [year, month, 1*ones(size(lat)), 12*ones(size(lat)), 0*ones(size(lat)), 0*ones(size(lat))]; 
dates = datenum(time_stamp);


% Use CANYON-B

out = CANYONB(dates,lat,lon,pres,insitu_temp,sal,doxy); 
%out = CANYONB(dates(1),lat(1),lon(1),pres(1),insitu_temp(1),sal(1),doxy(1)); 

% Save results to .csv
save_mat(:,1) = lat ;
save_mat(:,2) = lon ;
save_mat(:,3) = depth ;
save_mat(:,4) = pres ;
save_mat(:,5) = insitu_temp ;
save_mat(:,6) = sal ;
save_mat(:,7) = doxy ;
save_mat(:,8) = year ;
save_mat(:,9) = month ;
save_mat(:,10) = out.NO3(:);
save_mat(:,11) = out.PO4(:);
save_mat(:,12) = out.SiOH4(:);
save_mat(:,13) = out.AT(:);
save_mat(:,14) = out.CT(:);
save_mat(:,15) = out.pH(:);


writematrix(save_mat, "data/cdisk4_canyonb_results.csv", 'writemode', 'append');

toc
disp('done at')
datetime('now')

