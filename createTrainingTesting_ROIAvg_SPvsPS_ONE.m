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

    % Make example set of only pics and its labels (1 for pic)
    % SP == 1 label
    [spI,spD,spM]=transformIDM_avgROIVoxels(spI,spD,spM,relevantROI);
    [spEx,~,spInfo]=idmToExamples_condLabel(spI,spD,spM);
    currSize = size(spEx);
    spL = ones(currSize(1),1);

    % Make example set of only sentences and its labels (2 for sentence)
    % PS == 2 label
    [psI,psD,psM]=transformIDM_avgROIVoxels(psI,psD,psM,relevantROI);
    [psEx,~,psInfo]=idmToExamples_condLabel(psI,psD,psM);
    currSize = size(psEx);
    psL = 2 * ones(currSize(1),1);

    starplus_examples(n).ex = [spEx; psEx];
    starplus_examples(n).l = [spL; psL];
    starplus_examples(n).i = [spInfo; psInfo];
    if SPorPS == 1
        starplus_examples2(n).ex = spEx;
        starplus_examples2(n).l = spL;
        starplus_examples2(n).i = spInfo;
    elseif SPorPS == 2
        starplus_examples2(n).ex = psEx;
        starplus_examples2(n).l = psL;
        starplus_examples2(n).i = psInfo;
    end
end