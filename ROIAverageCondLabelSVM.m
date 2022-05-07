addpath(genpath('fmri_project'))

relevantROI = {'CALC' 'LIPL' 'LT' 'LTRIA' 'LOPER' 'LIPS' 'LDLPFC'};

fprintf('Average ROI (supervoxel)\n')
fprintf('(Conditions 0-3 used as labels)\n')

% ROI avg for 3 training sets against 3 testing sets
% SVM 1v1 Multiclass Classification (MATLAB library)
% Labels used are the conditions 1-3
% Condition info found in the given data description provided by CMU:
%   https://www.cs.cmu.edu/afs/cs.cmu.edu/project/theo-81/www/README-data-documentation.txt

data04799 = load('data-starplus-04799-v7.mat');
data04820 = load('data-starplus-04820-v7.mat');
data04847 = load('data-starplus-04847-v7.mat');
data05675 = load('data-starplus-05675-v7.mat');
data05680 = load('data-starplus-05680-v7.mat');
data05710 = load('data-starplus-05710-v7.mat');
starplus_data = [data04799, data04820, data04847, data05675, data05680, data05710];
starplus_data_numbers = [4799, 4820, 4847, 5675, 5680, 5710];
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
                current_set = starplus_data(training_set_indices(l));
                [i,d,m]=transformIDM_selectTrials( ...
                    current_set.info, ...
                    current_set.data, ...
                    current_set.meta, find([current_set.info.cond]~=0));
                [i,d,m]=transformIDM_avgROIVoxels(i,d,m,relevantROI);
                [currentEx,currentL,currentI] = idmToExamples_condLabel(i,d,m);
                trainingEx = [trainingEx; currentEx];
                trainingL = [trainingL; currentL];
                trainingI = [trainingI; currentI];

                % set up the testing set of 3
                
                current_set = starplus_data(testing_set_indices(l));
                [i,d,m]=transformIDM_selectTrials( ...
                    current_set.info, ...
                    current_set.data, ...
                    current_set.meta, find([current_set.info.cond]~=0));
                [i,d,m]=transformIDM_avgROIVoxels(i,d,m,relevantROI);
                [currentEx,currentL,currentI] = idmToExamples_condLabel(i,d,m);
                testingEx = [testingEx; currentEx];
                testingL = [testingL; currentL];
                testingI = [testingI; currentI];
            end
            svmClassifier = fitcecoc(trainingEx, trainingL);
            predictedLabels = predict(svmClassifier, testingEx);
            avgSVMaccuracy = (sum(predictedLabels == testingL)) / length(predictedLabels);
            fprintf('--Accuracy (correct predicted labels / # of labels): %f\n', avgSVMaccuracy);
            current_combo = current_combo + 1;
        end
    end
end
