% look into subfolder
addpath(genpath('fmri_project'))

% avg of voxels by ROI training and testing
load data-starplus-04799-v7.mat;
% get all the trials with valid values
[i,d,m]=transformIDM_selectTrials(info,data,meta,find([info.cond]~=0));
% look for only the relevant regions of interest
% these regions were suggested for greater accuracy here:
%   https://www.cs.cmu.edu/afs/cs.cmu.edu/project/theo-81/www/
relevantROI = {'CALC' 'LIPL' 'LT' 'LTRIA' 'LOPER' 'LIPS' 'LDLPFC'};
[i,d,m] = transformIDM_avgROIVoxels(i,d,m,relevantROI);
[trainingExamples,trainingLabels,trainingInfo] = idmToExamples_condLabel(i,d,m);
avgNBClassifier = trainClassifier(trainingExamples, trainingLabels, 'nbayes');
avgNBPredict = applyClassifier(trainingExamples, avgNBClassifier, 'nbayes');
[result,predictedLabels,trace] = summarizePredictions(avgNBPredict,avgNBClassifier,'averageRank',trainingLabels);
avgNBaccuracy = 1 - result{1};
fprintf('Testing accuracy of classifier on training set: %f\n', avgNBaccuracy);

% now we try with a different person as a testing set
load data-starplus-05675-v7.mat;
[i,d,m]=transformIDM_selectTrials(info,data,meta,find([info.cond]~=0));
[i,d,m] = transformIDM_avgROIVoxels(i,d,m,relevantROI);
[testingExamples,testingLabels,testingInfo] = idmToExamples_condLabel(i,d,m);
avgNBPredict_test = applyClassifier(testingExamples, avgNBClassifier, 'nbayes');
[test_result,test_predictedLabels, test_trace] = summarizePredictions(avgNBPredict_test,avgNBClassifier,'averageRank',testingLabels);
avgNBaccuracy_test = 1 - test_result{1};
fprintf('Testing accuracy of classifier on testing set: %f\n', avgNBaccuracy_test);
