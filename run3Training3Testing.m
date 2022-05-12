%6 choose 3 ways to have 3 training sets and 3 testing sets
current_combo = 1;
all_accuracies = ones(20, 1);
all_losses = ones(20, 1);
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
            if strcmp(classifier, 'nb')
                nbClassifier = fitcnb(trainingEx,trainingL);
                predictedLabels = predict(nbClassifier,testingEx);
                currLoss = loss(nbClassifier,testingEx,testingL,'LossFun','hinge');
            elseif strcmp(classifier, 'svmlinear')
                t=templateSVM('KernelFunction','linear','KernelScale','auto');
                svmClassifier = fitcecoc(trainingEx,trainingL,'Learners',t,'Coding','onevsone');
                predictedLabels = predict(svmClassifier,testingEx);
                currLoss = loss(svmClassifier,testingEx,testingL,'LossFun','hinge');
            elseif strcmp(classifier, '5nn')
                knnClassifier = fitcknn(trainingEx,trainingL,'NumNeighbors',5);
                predictedLabels = predict(knnClassifier,testingEx);
                currLoss = loss(knnClassifier,testingEx,testingL,'LossFun','hinge');
            elseif strcmp(classifier, '7nn')
                knnClassifier = fitcknn(trainingEx,trainingL,'NumNeighbors',7);
                predictedLabels = predict(knnClassifier,testingEx);
                currLoss = loss(knnClassifier,testingEx,testingL,'LossFun','hinge');
            elseif strcmp(classifier, '9nn')
                knnClassifier = fitcknn(trainingEx,trainingL,'NumNeighbors',9);
                predictedLabels = predict(knnClassifier,testingEx);
                currLoss = loss(knnClassifier,testingEx,testingL,'LossFun','hinge');
            elseif strcmp(classifier, 'svmrbf')
                t=templateSVM('KernelFunction','gaussian','KernelScale','auto');
                svmClassifier = fitcecoc(trainingEx,trainingL,'Learners',t,'Coding','onevsone');
                predictedLabels = predict(svmClassifier,testingEx);
                currLoss = loss(svmClassifier,testingEx,testingL,'LossFun','hinge');
            end
            currAcc = (sum(predictedLabels == testingL)) / length(testingL);

            fprintf('--Accuracy (correct predicted labels / # of labels): %f\n', currAcc);
            all_accuracies(current_combo) = currAcc;
            all_losses(current_combo) = currLoss;
            current_combo = current_combo + 1;
        end
    end
end
overallAccuracy = mean(all_accuracies);
overallLoss = mean(all_losses);