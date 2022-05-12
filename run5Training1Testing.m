%6 choose 1 ways to have 5 training sets and 1 testing set
current_combo = 1;
all_accuracies = ones(6, 1);
all_losses = ones(6, 1);

for n=length(starplus_data):-1:1
    testingEx = starplus_examples(n).ex;
    testingL = starplus_examples(n).l;
    testingI = starplus_examples(n).i;
    trainingEx = [];
    trainingL = [];
    trainingI = [];
    setOfTrainingSets = [];
    for j=1:length(starplus_data)
        if j ~= n
            setOfTrainingSets = [setOfTrainingSets j];
            trainingEx = [trainingEx; starplus_examples(j).ex];
            trainingL = [trainingL; starplus_examples(j).l];
            trainingI = [trainingI; starplus_examples(j).i];
        end
    end
    fprintf('Current training set: %d, %d, %d, %d, %d\n',...
        starplus_data_numbers(setOfTrainingSets(1)),...
        starplus_data_numbers(setOfTrainingSets(2)),...
        starplus_data_numbers(setOfTrainingSets(3)),...
        starplus_data_numbers(setOfTrainingSets(4)),...
        starplus_data_numbers(setOfTrainingSets(5)))
    fprintf('Current testing set: %d\n', starplus_data_numbers(n));
    if strcmp(classifier, 'nb')
        nbClassifier = fitcnb(trainingEx,trainingL);
        predictedLabels = predict(nbClassifier,testingEx);
        currLoss = loss(nbClassifier,testingEx,testingL,'LossFun','hinge');
    elseif strcmp(classifier, 'svmlinear')
        t=templateSVM('KernelFunction','linear','KernelScale','auto');
        svmClassifier = fitcecoc(trainingEx,trainingL,'Learners',t,'Coding','onevsone');
        predictedLabels = predict(svmClassifier,testingEx);
        currLoss = loss(svmClassifier,testingEx,testingL,'LossFun','hinge');
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

overallAccuracy = mean(all_accuracies);
overallLoss = mean(all_losses);