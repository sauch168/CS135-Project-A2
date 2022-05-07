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