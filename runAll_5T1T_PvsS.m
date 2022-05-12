%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% P vs S label (subject is viewing a picture or a sentence at any given time)

%%%%% SVM linear kernel and rbf kernel
fprintf('P vs S label, Active\n')
numVoxels = 50;
classifier='svmlinear';
createTrainingTesting_Active_PvsS;
run5Training1Testing;
SVML_accuracies_PvsS_active_5T1T = all_accuracies;
SVML_accuracy_PvsS_active_5T1T = overallAccuracy;
SVML_losses_PvsS_active_5T1T = all_losses;
SVML_loss_PvsS_active_5T1T = overallLoss;
classifier = 'svmrbf';
run5Training1Testing;
SVMR_accuracies_PvsS_active_5T1T = all_accuracies;
SVMR_accuracy_PvsS_active_5T1T = overallAccuracy;
SVMR_losses_PvsS_active_5T1T = all_losses;
SVMR_loss_PvsS_active_5T1T = overallLoss;

fprintf('P vs S label, ROI Avg')
classifier = 'svmlinear';
run5Training1Testing;
SVML_accuracies_PvsS_ROIAvg_5T1T = all_accuracies;
SVML_accuracy_PvsS_ROIAvg_5T1T = overallAccuracy;
SVML_losses_PvsS_ROIAvg_5T1T = all_losses;
SVML_loss_PvsS_ROIAvg_5T1T = overallLoss;
classifier = 'svmrbf';
run5Training1Testing;
SVMR_accuracies_PvsS_ROIAvg_5T1T = all_accuracies;
SVMR_accuracy_PvsS_ROIAvg_5T1T = overallAccuracy;
SVMR_losses_PvsS_ROIAvg_5T1T = all_losses;
SVMR_loss_PvsS_ROIAvg_5T1T = overallLoss;

fprintf('P vs S label, Active Avg')
numVoxels = 100;
createTrainingTesting_ActiveAvg_PvsS;
classifier = 'svmlinear';
run5Training1Testing;
SVML_accuracies_PvsS_activeAvg_5T1T = all_accuracies;
SVML_accuracy_PvsS_activeAvg_5T1T = overallAccuracy;
SVML_losses_PvsS_activeAvg_5T1T = all_losses;
SVML_loss_PvsS_activeAvg_5T1T = overallLoss;
classifier = 'svmrbf';
run5Training1Testing;
SVMR_accuracies_PvsS_activeAvg_5T1T = all_accuracies;
SVMR_accuracy_PvsS_activeAvg_5T1T = overallAccuracy;
SVMR_losses_PvsS_activeAvg_5T1T = all_losses;
SVMR_loss_PvsS_activeAvg_5T1T = overallLoss;

%%%%% Naive Bayes
fprintf('--------Naive Bayes----------')
fprintf('P vs S label, Active\n')
numVoxels = 50;
classifier = 'nb';
createTrainingTesting_Active_PvsS;
run5Training1Testing;
NB_accuracies_PvsS_active_5T1T = all_accuracies;
NB_accuracy_PvsS_active_5T1T = overallAccuracy;
NB_losses_PvsS_active_5T1T = all_losses;
NB_loss_PvsS_active_5T1T = overallLoss;

fprintf('P vs S label, ROI Avg')
createTrainingTesting_ROIAvg_PvsS;
run5Training1Testing;
NB_accuracies_PvsS_ROIAvg_5T1T = all_accuracies;
NB_accuracy_PvsS_ROIAvg_5T1T = overallAccuracy;
NB_losses_PvsS_ROIAvg_5T1T = all_losses;
NB_loss_PvsS_ROIAvg_5T1T = overallLoss;

fprintf('P vs S label, Active Avg')
numVoxels = 100;
createTrainingTesting_ActiveAvg_PvsS;
run5Training1Testing;
NB_accuracies_PvsS_activeAvg_5T1T = all_accuracies;
NB_accuracy_PvsS_activeAvg_5T1T = overallAccuracy;
NB_losses_PvsS_activeAvg_5T1T = all_losses;
NB_loss_PvsS_activeAvg_5T1T = overallLoss;
