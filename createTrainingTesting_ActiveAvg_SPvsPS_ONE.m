%generate usable examples
% P/S Label methodology adapted and modified from:
%   https://www.cs.cmu.edu/afs/cs.cmu.edu/project/theo-81/www/README-software-documentation.txt
for n=1:length(starplus_data)
    current_set = starplus_data(n);
    % remove trials for unusable data and resting periods
    [i,d,m]=transformIDM_selectTrials( ...
        current_set.info, ...
        current_set.data, ...
        current_set.meta, find([current_set.info.cond]>1));

    % SP
    [spI,spD,spM]=transformIDM_selectTrials(i,d,m,find([i.firstStimulus]=='P'));
    [spI,spD,spM]=transformIDM_selectTimewindow(spI,spD,spM,[1:32]);
    % Picture was first set in these trials, so sentence is second set

    % PS
    [psI,psD,psM]=transformIDM_selectTrials(i,d,m,find([i.firstStimulus]=='S'));
    [psI,psD,psM]=transformIDM_selectTimewindow(psI,psD,psM,[1:32]);
    % Sentence was first set in these trials, so picture is second set

    % Each set is 16 images as specified in the README of /fmri_project/

    currentEx = [];
    currentL = [];
    currentI = [];

    [Ri,Rd,Rm]=transformIDM_selectROIVoxels(spI,spD,spM,relevantROI);
    [Ri,Rd,Rm]=transformIDM_selectActiveVoxels(Ri,Rd,Rm,numVoxels);
    [Ri,Rd,Rm]=transformIDM_avgVoxels(Ri,Rd,Rm,{1:Rm.nvoxels});
    [Rex,~,Rinfo]=idmToExamples_condLabel(Ri,Rd,Rm);
    currSize = size(Rex);
    Rl = ones(currSize(1), 1);
    currentEx = [currentEx; Rex];
    currentL = [currentL; Rl];
    currentI = [currentI; Rinfo];
    if SPorPS == 1
        currentEx2 = Rex;
        currentL2 = Rl;
        currentI2 = Rinfo;
    end

    [Ri,Rd,Rm]=transformIDM_selectROIVoxels(psI,psD,psM,relevantROI);
    [Ri,Rd,Rm]=transformIDM_selectActiveVoxels(Ri,Rd,Rm,numVoxels);
    [Ri,Rd,Rm]=transformIDM_avgVoxels(Ri,Rd,Rm,{1:Rm.nvoxels});
    [Rex,~,Rinfo]=idmToExamples_condLabel(Ri,Rd,Rm);
    currSize = size(Rex);
    Rl = 2 * ones(currSize(1), 1);
    currentEx = [currentEx; Rex];
    currentL = [currentL; Rl];
    currentI = [currentI; Rinfo];
    if SPorPS == 2
        currentEx2 = Rex;
        currentL2 = Rl;
        currentI2 = Rinfo;
    end

    starplus_examples(n).ex = currentEx;
    starplus_examples(n).l = currentL;
    starplus_examples(n).i = currentI;
    starplus_examples2(n).ex = currentEx2;
    starplus_examples2(n).l = currentL2;
    starplus_examples2(n).i = currentI2;
end