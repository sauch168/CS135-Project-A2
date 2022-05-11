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
    [picI,picD,picM]=transformIDM_selectTrials(i,d,m,find([i.firstStimulus]=='P'));
    % Picture was first set in these trials, so sentence is second set
    [senI,senD,senM]=transformIDM_selectTrials(i,d,m,find([i.firstStimulus]=='S'));
    % Sentence was first set in these trials, so picture is second set

    % Each set is 16 images as specified in the README of /fmri_project/

    % Pictures
    [picI1,picD1,picM1]=transformIDM_selectTimewindow(picI,picD,picM,[1:16]);
    [picI1,picD1,picM1]=transformIDM_avgROIVoxels(picI1,picD1,picM1);
    [picI2,picD2,picM2]=transformIDM_selectTimewindow(senI,senD,senM,[17:32]);
    [picI2,picD2,picM2]=transformIDM_avgROIVoxels(picI2,picD2,picM2);

    % Sentences
    [senI1,senD1,senM1]=transformIDM_selectTimewindow(picI,picD,picM,[17:32]);
    [senI1,senD1,senM1]=transformIDM_avgROIVoxels(senI1,senD1,senM1);
    [senI2,senD2,senM2]=transformIDM_selectTimewindow(senI,senD,senM,[1:16]);
    [senI2,senD2,senM2]=transformIDM_avgROIVoxels(senI2,senD2,senM2);

    % Make example set of only pics and its labels (1 for pic)
    [pic1Ex,~,pic1Info]=idmToExamples_condLabel(picI1,picD1,picM1);
    [pic2Ex,~,pic2Info]=idmToExamples_condLabel(picI2,picD2,picM2);
    picExamples = [pic1Ex; pic2Ex];
    currSize = size(picExamples);
    picInfo = [pic1Info; pic2Info];
    picLabels = ones(currSize(1),1);

    % Make example set of only sentences and its labels (2 for sentence)
    [sen1Ex,~,sen1Info]=idmToExamples_condLabel(senI1,senD1,senM1);
    [sen2Ex,~,sen2Info]=idmToExamples_condLabel(senI2,senD2,senM2);
    senExamples = [sen1Ex; sen2Ex];
    senInfo = [sen1Info; sen2Info];
    currSize = size(senExamples);
    senLabels = 2 * ones(currSize(1),1);

    starplus_examples(n).ex = [picExamples; senExamples];
    starplus_examples(n).l = [picLabels; senLabels];
    starplus_examples(n).i = [picInfo; senInfo];
end