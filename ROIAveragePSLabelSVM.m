addpath(genpath('fmri_project'))

relevantROI = {'CALC' 'LIPL' 'LT' 'LTRIA' 'LOPER' 'LIPS' 'LDLPFC'};

fprintf('Average ROI (supervoxel)\nSVM Classifier (1v1 if multi-class)\n')
fprintf('Label is whether picture or sentence is being viewed\n')

% ROI avg for 3 training sets against 3 testing sets
% SVM 1v1 Multi-Class Classification (from MATLAB library)
% Labels used are 1(viewing picture),2(viewing sentence)

data04799 = load('data-starplus-04799-v7.mat');
data04820 = load('data-starplus-04820-v7.mat');
data04847 = load('data-starplus-04847-v7.mat');
data05675 = load('data-starplus-05675-v7.mat');
data05680 = load('data-starplus-05680-v7.mat');
data05710 = load('data-starplus-05710-v7.mat');
starplus_data = [data04799, data04820, data04847, data05675, data05680, data05710];
starplus_data_numbers = [4799, 4820, 4847, 5675, 5680, 5710];
starplus_examples = [];
starplus_examples(6).ex = [];
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
    picExamples = transpose([pic1Ex; pic2Ex]);
    picInfo = [pic1Info; pic2Info];
    picLabels = ones(length(picExamples),1);

    % Make example set of only sentences and its labels (2 for sentence)
    [sen1Ex,~,sen1Info]=idmToExamples_condLabel(senI1,senD1,senM1);
    [sen2Ex,~,sen2Info]=idmToExamples_condLabel(senI2,senD2,senM2);
    senExamples = transpose([sen1Ex; sen2Ex]);
    senInfo = [sen1Info; sen2Info];
    senLabels = 2 * ones(length(senExamples),1);

    starplus_examples(n).ex = [picExamples; senExamples];
    starplus_examples(n).l = [picLabels; senLabels];
    starplus_examples(n).i = [picInfo; senInfo];
end


%6 choose 3 ways to have 3 training sets and 3 testing sets
current_combo = 1;
for n=1:length(starplus_data)
    for j=n+1:length(starplus_data)
        for k=j+1:length(starplus_data)
            fprintf('Combination %d of training/testing.\n', current_combo)
            fprintf('Current training set: %d, %d, %d\n', ...
                starplus_data_numbers(n), ...
                starplus_data_numbers(j), ...
                starplus_data_numbers(k));
            % set up the data indices for training and testing sets
            testing_set_indices = [-1 -1 -1];
            curr = 1;
            for l=1:length(starplus_data)
                if l ~= n && l ~= j && l ~= k
                    testing_set_indices(curr) = l;
                    curr = curr + 1;
                end
            end
            fprintf('Current testing set: %d, %d, %d\n', ...
                starplus_data_numbers(testing_set_indices(1)), ...
                starplus_data_numbers(testing_set_indices(2)), ...
                starplus_data_numbers(testing_set_indices(3)));

            training_set_indices = [n j k];
            trainingEx = [];
            trainingL = [];
            trainingI = [];
            testingEx = [];
            testingL = [];
            testingI = [];
            for l=1:3
                % set up the training set of 3
                trainingEx = [trainingEx; starplus_examples(training_set_indices(l)).ex];
                trainingL = [trainingL; starplus_examples(training_set_indices(l)).l];
                trainingI = [trainingI; starplus_examples(training_set_indices(l)).i];

                % set up the testing set of 3
                testingEx = [testingEx; starplus_examples(testing_set_indices(l)).ex];
                testingL = [testingL; starplus_examples(testing_set_indices(l)).l];
                testingI = [testingI; starplus_examples(testing_set_indices(l)).i];
            end
            svmClassifier = fitcecoc(trainingEx, trainingL);
            predictedLabels = predict(svmClassifier, testingEx);
            avgSVMaccuracy = (sum(predictedLabels == testingL)) / length(predictedLabels);
            fprintf('--Accuracy (correct predicted labels / # of labels): %f\n', avgSVMaccuracy);
            current_combo = current_combo + 1;
        end
    end
end
