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


% ROI avg for 3 training sets against 3 testing sets

data04799 = load('data-starplus-04799-v7.mat');
data04820 = load('data-starplus-04820-v7.mat');
data04847 = load('data-starplus-04847-v7.mat');
data05675 = load('data-starplus-05675-v7.mat');
data05680 = load('data-starplus-05680-v7.mat');
data05710 = load('data-starplus-05710-v7.mat');
starplus_data = [data04799, data04820, data04847, data05675, data05680, data05710];
% get all the trials with valid values
[i,d,m]=transformIDM_selectTrials(data04799.info,data04799.data,data04799.meta,find([data04799.info.cond]~=0));
[i,d,m] = transformIDM_avgROIVoxels(i,d,m,relevantROI);
[trainingEx04799,trainingL04799,trainingI04799] = idmToExamples_condLabel(i,d,m);
[i,d,m]=transformIDM_selectTrials(data04820.info,data04820.data,data04820.meta,find([data04820.info.cond]~=0));
[i,d,m] = transformIDM_avgROIVoxels(i,d,m,relevantROI);
[trainingEx04820,trainingL04820,trainingI04820] = idmToExamples_condLabel(i,d,m);
[i,d,m]=transformIDM_selectTrials(data04847.info,data04847.data,data04847.meta,find([data04847.info.cond]~=0));
[i,d,m] = transformIDM_avgROIVoxels(i,d,m,relevantROI);
[trainingEx04847,trainingL04847,trainingI04847] = idmToExamples_condLabel(i,d,m);

trainingEx = [trainingEx04799;trainingEx04820;trainingEx04847];
trainingL = [trainingL04799;trainingL04820;trainingL04847];
trainingI = [trainingI04799;trainingI04820;trainingI04847];


[i,d,m]=transformIDM_selectTrials(data05675.info,data05675.data,data05675.meta,find([data05675.info.cond]~=0));
[i,d,m] = transformIDM_avgROIVoxels(i,d,m,relevantROI);
[testingEx05675,testingL05675,testingI05675] = idmToExamples_condLabel(i,d,m);
[i,d,m]=transformIDM_selectTrials(data05680.info,data05680.data,data05680.meta,find([data05680.info.cond]~=0));
[i,d,m] = transformIDM_avgROIVoxels(i,d,m,relevantROI);
[testingEx05680,testingL05680,testingI05680] = idmToExamples_condLabel(i,d,m);
[i,d,m]=transformIDM_selectTrials(data05710.info,data05710.data,data05710.meta,find([data05710.info.cond]~=0));
[i,d,m] = transformIDM_avgROIVoxels(i,d,m,relevantROI);
[testingEx05710,testingL05710,testingI05710] = idmToExamples_condLabel(i,d,m);

testingEx = [testingEx05675;testingEx05680;testingEx05710];
testingL = [testingL05675;testingL05680;testingL05710];
testingI = [testingI05675;testingI05680;testingI05710];


avgNBClassifier = trainClassifier(trainingEx, trainingL, 'nbayes');
avgNBPredict = applyClassifier(testingEx, avgNBClassifier, 'nbayes');
[result,predictedLabels,trace] = summarizePredictions(avgNBPredict,avgNBClassifier,'averageRank',testingL);
avgNBaccuracy = 1 - result{1};
fprintf('--------------------------------------------------------------------\n')
fprintf('Average ROI (supervoxel)\n')
fprintf('Training set: 4799, 4820, 4847, Testing set: 5675, 5680, 5710\n')
fprintf('(Conditions 0-3 used as labels)\n')
fprintf('--Accuracy: %f\n', avgNBaccuracy);

