%%%%% SVM linear kernel and rbf kernel
fprintf('Cond 2 vs Cond 3 Label (No negation vs negation), Active\n')
numVoxels = 50;
classifier = 'svmlinear';
createTrainingTesting_Active_Cond;
run5Training1Testing;
SVML_accuracies_Cond_active_5T1T = all_accuracies;
SVML_accuracy_Cond_active_5T1T = overallAccuracy;
SVML_losses_Cond_active_5T1T = all_losses;
SVML_loss_Cond_active_5T1T = overallLoss;
classifier = 'svmrbf';
run5Training1Testing;
SVMR_accuracies_Cond_active_5T1T = all_accuracies;
SVMR_accuracy_Cond_active_5T1T = overallAccuracy;
SVMR_losses_Cond_active_5T1T = all_losses;
SVMR_loss_Cond_active_5T1T = overallLoss;

fprintf('Cond 2 vs Cond 3 Label (No negation vs negation), ROIAvg\n')
createTrainingTesting_ROIAvg_Cond
classifier = 'svmlinear';
run5Training1Testing
SVML_accuracies_Cond_ROIAvg_5T1T = all_accuracies;
SVML_accuracy_Cond_ROIAvg_5T1T = overallAccuracy;
SVML_losses_Cond_ROIAvg_5T1T = all_losses;
SVML_loss_Cond_ROIAvg_5T1T = overallLoss;
classifier = 'svmrbf';
run5Training1Testing;
SVMR_accuracies_Cond_ROIAvg_5T1T = all_accuracies;
SVMR_accuracy_Cond_ROIAvg_5T1T = overallAccuracy;
SVMR_losses_Cond_ROIAvg_5T1T = all_losses;
SVMR_loss_Cond_ROIAvg_5T1T = overallLoss;

fprintf('Cond 2 vs Cond 3 Label (No negation vs negation), Active Avg\n')

numVoxels = 100;
createTrainingTesting_ActiveAvg_Cond;
classifier = 'svmlinear';
run5Training1Testing;
SVML_accuracies_Cond_activeAvg_5T1T = all_accuracies;
SVML_accuracy_Cond_activeAvg_5T1T = overallAccuracy;
SVML_losses_Cond_activeAvg_5T1T = all_losses;
SVML_loss_Cond_activeAvg_5T1T = overallLoss;
classifier = 'svmrbf';
run5Training1Testing;
SVMR_accuracies_Cond_activeAvg_5T1T = all_accuracies;
SVMR_accuracy_Cond_activeAvg_5T1T = overallAccuracy;
SVMR_losses_Cond_activeAvg_5T1T = all_losses;
SVMR_loss_Cond_activeAvg_5T1T = overallLoss;

%%%%% Naive Bayes
fprintf('NB: Cond 2 vs Cond 3 Label (No negation vs negation), Active\n')
numVoxels = 50;
classifier = 'nb';
createTrainingTesting_Active_Cond;
run5Training1Testing;
NB_accuracies_Cond_active_5T1T = all_accuracies;
NB_accuracy_Cond_active_5T1T = overallAccuracy;
NB_losses_Cond_active_5T1T = all_losses;
NB_loss_Cond_active_5T1T = overallLoss;

fprintf('NB: Cond 2 vs Cond 3 Label (No negation vs negation), ROIAvg\n')
createTrainingTesting_ROIAvg_Cond;
run5Training1Testing;
NB_accuracies_Cond_ROIAvg_5T1T = all_accuracies;
NB_accuracy_Cond_ROIAvg_5T1T = overallAccuracy;
NB_losses_Cond_ROIAvg_5T1T = all_losses;
NB_loss_Cond_ROIAvg_5T1T = overallLoss;

fprintf('NB: Cond 2 vs Cond 3 Label (No negation vs negation), Active Avg\n')
numVoxels = 100;
createTrainingTesting_ActiveAvg_Cond;
run5Training1Testing;
NB_accuracies_Cond_activeAvg_5T1T = all_accuracies;
NB_accuracy_Cond_activeAvg_5T1T = overallAccuracy;
NB_losses_Cond_activeAvg_5T1T = all_losses;
NB_loss_Cond_activeAvg_5T1T = overallLoss;

%%%%% KNN Classification
fprintf('Cond 2 vs Cond 3 Label (No negation vs negation), Active\n')
numVoxels = 50;
classifier = '5nn';
createTrainingTesting_Active_Cond;
run5Training1Testing;
KNN5_accuracies_Cond_active_5T1T = all_accuracies;
KNN5_accuracy_Cond_active_5T1T = overallAccuracy;
KNN5_losses_Cond_active_5T1T = all_losses;
KNN5_loss_Cond_active_5T1T = overallLoss;
classifier = '7nn';
run5Training1Testing;
KNN7_accuracies_Cond_active_5T1T = all_accuracies;
KNN7_accuracy_Cond_active_5T1T = overallAccuracy;
KNN7_losses_Cond_active_5T1T = all_losses;
KNN7_loss_Cond_active_5T1T = overallLoss;
classifier = '9nn';
run5Training1Testing;
KNN9_accuracies_Cond_active_5T1T = all_accuracies;
KNN9_accuracy_Cond_active_5T1T = overallAccuracy;
KNN9_losses_Cond_active_5T1T = all_losses;
KNN9_loss_Cond_active_5T1T = overallLoss;

fprintf('Cond 2 vs Cond 3 Label (No negation vs negation), ROIAvg\n')
createTrainingTesting_ROIAvg_Cond
classifier = '5nn';
run5Training1Testing
KNN5_accuracies_Cond_ROIAvg_5T1T = all_accuracies;
KNN5_accuracy_Cond_ROIAvg_5T1T = overallAccuracy;
KNN5_losses_Cond_ROIAvg_5T1T = all_losses;
KNN5_loss_Cond_ROIAvg_5T1T = overallLoss;
classifier = '7nn';
run5Training1Testing;
KNN7_accuracies_Cond_ROIAvg_5T1T = all_accuracies;
KNN7_accuracy_Cond_ROIAvg_5T1T = overallAccuracy;
KNN7_losses_Cond_ROIAvg_5T1T = all_losses;
KNN7_loss_Cond_ROIAvg_5T1T = overallLoss;
classifier = '9nn';
run5Training1Testing;
KNN9_accuracies_Cond_ROIAvg_5T1T = all_accuracies;
KNN9_accuracy_Cond_ROIAvg_5T1T = overallAccuracy;
KNN9_losses_Cond_ROIAvg_5T1T = all_losses;
KNN9_loss_Cond_ROIAvg_5T1T = overallLoss;

fprintf('Cond 2 vs Cond 3 Label (No negation vs negation), Active Avg\n')

numVoxels = 100;
createTrainingTesting_ActiveAvg_Cond;
classifier = '5nn';
run5Training1Testing;
KNN5_accuracies_Cond_activeAvg_5T1T = all_accuracies;
KNN5_accuracy_Cond_activeAvg_5T1T = overallAccuracy;
KNN5_losses_Cond_activeAvg_5T1T = all_losses;
KNN5_loss_Cond_activeAvg_5T1T = overallLoss;
classifier = '7nn';
run5Training1Testing;
KNN7_accuracies_Cond_activeAvg_5T1T = all_accuracies;
KNN7_accuracy_Cond_activeAvg_5T1T = overallAccuracy;
KNN7_losses_Cond_activeAvg_5T1T = all_losses;
KNN7_loss_Cond_activeAvg_5T1T = overallLoss;
classifier = '9nn';
run5Training1Testing;
KNN9_accuracies_Cond_activeAvg_5T1T = all_accuracies;
KNN9_accuracy_Cond_activeAvg_5T1T = overallAccuracy;
KNN9_losses_Cond_activeAvg_5T1T = all_losses;
KNN9_loss_Cond_activeAvg_5T1T = overallLoss;