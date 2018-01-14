%load('PODACI.mat');
dataFolder = './Rezultati';
folderNames = dir(dataFolder);
folderNames = extractfield(folderNames(3:end), 'name') % kodovi ispitanika
nrSubjects = numel(folderNames);    % broj ispitanika

idx = 1;    % prvi ispitanik
hash = folderNames{idx};
[t_pupil,LPD,LPS,LPV,RPD,RPS,RPV,BKID,BKDUR] = loadPupilData([dataFolder '/' hash]);