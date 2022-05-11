%%%% Labels are SP (shown picture first and then sentence) and PS
%%%%    (shown sentence first and then picture)

addpath(genpath('fmri_project'))

relevantROI = {'CALC' 'LIPL' 'LT' 'LTRIA' 'LOPER' 'LIPS' 'LDLPFC'};

numVoxels = 50;

fprintf('Average ROI (supervoxel)\nNaive Bayes Classifier (/fmri_project/)\n')
fprintf('Label is whether picture or sentence is being viewed\n')

% ROI avg for 3 training sets against 3 testing sets
% Naive Bayes Classifier (provided from Project Files in /fmri_project/)
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
    [Rex,~,Rinfo]=idmToExamples_condLabel(Ri,Rd,Rm);
    currSize = size(Rex);
    Rl = ones(currSize(1), 1);
    currentEx = [currentEx; Rex];
    currentL = [currentL; Rl];
    currentI = [currentI; Rinfo];

    [Ri,Rd,Rm]=transformIDM_selectROIVoxels(psI,psD,psM,relevantROI);
    [Ri,Rd,Rm]=transformIDM_selectActiveVoxels(Ri,Rd,Rm,numVoxels);
    [Rex,~,Rinfo]=idmToExamples_condLabel(Ri,Rd,Rm);
    currSize = size(Rex);
    Rl = 2 * ones(currSize(1), 1);
    currentEx = [currentEx; Rex];
    currentL = [currentL; Rl];
    currentI = [currentI; Rinfo];

    starplus_examples(n).ex = currentEx;
    starplus_examples(n).l = currentL;
    starplus_examples(n).i = currentI;
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
            svmClassifier = fitcecoc(trainingEx,trainingL);
            predictedLabels = predict(svmClassifier,testingEx);
            fprintf('--Accuracy (correct predicted labels / # of labels): %f\n', (sum(predictedLabels == testingL)) / length(testingL));
            current_combo = current_combo + 1;
        end
    end
end
