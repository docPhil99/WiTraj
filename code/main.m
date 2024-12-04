
addpath("linux-supp","linux-supp/matlab/")
% directory of CSI data file
dire = '../data/diamond/';
% file name to be processed
fname = 'los4m_diamond_counterclockwise_t10';

%config holds, groundtruth, initpoint,r1,r2,r3,rx,tx,trajectory type

if ~exist([dire, 'config.mat'], 'file')
    disp('no config.mat');
    return;
end

if ~exist([dire, 'track'], 'dir')
    mkdir([dire, 'track']);
end

process(dire, fname);
