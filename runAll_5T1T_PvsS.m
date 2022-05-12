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

fprintf('P vs S label, ROI Avg\n')
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

fprintf('P vs S label, Active Avg\n')
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

fprintf('P vs S label, ROI Avg\n')
createTrainingTesting_ROIAvg_PvsS;
run5Training1Testing;
NB_accuracies_PvsS_ROIAvg_5T1T = all_accuracies;
NB_accuracy_PvsS_ROIAvg_5T1T = overallAccuracy;
NB_losses_PvsS_ROIAvg_5T1T = all_losses;
NB_loss_PvsS_ROIAvg_5T1T = overallLoss;

fprintf('P vs S label, Active Avg\n')
numVoxels = 100;
createTrainingTesting_ActiveAvg_PvsS;
run5Training1Testing;
NB_accuracies_PvsS_activeAvg_5T1T = all_accuracies;
NB_accuracy_PvsS_activeAvg_5T1T = overallAccuracy;
NB_losses_PvsS_activeAvg_5T1T = all_losses;
NB_loss_PvsS_activeAvg_5T1T = overallLoss;

%%%%% KNN Classifier
fprintf('P vs S label, Active\n')
numVoxels = 50;
classifier='5nn';
createTrainingTesting_Active_PvsS;
run5Training1Testing;
KNN5_accuracies_PvsS_active_5T1T = all_accuracies;
KNN5_accuracy_PvsS_active_5T1T = overallAccuracy;
KNN5_losses_PvsS_active_5T1T = all_losses;
KNN5_loss_PvsS_active_5T1T = overallLoss;
classifier = '7nn';
run5Training1Testing;
KNN7_accuracies_PvsS_active_5T1T = all_accuracies;
KNN7_accuracy_PvsS_active_5T1T = overallAccuracy;
KNN7_losses_PvsS_active_5T1T = all_losses;
KNN7_loss_PvsS_active_5T1T = overallLoss;
classifier = '9nn';
run5Training1Testing;
KNN9_accuracies_PvsS_active_5T1T = all_accuracies;
KNN9_accuracy_PvsS_active_5T1T = overallAccuracy;
KNN9_losses_PvsS_active_5T1T = all_losses;
KNN9_loss_PvsS_active_5T1T = overallLoss;

fprintf('P vs S label, ROI Avg\n')
classifier = '5nn';
run5Training1Testing;
KNN5_accuracies_PvsS_ROIAvg_5T1T = all_accuracies;
KNN5_accuracy_PvsS_ROIAvg_5T1T = overallAccuracy;
KNN5_losses_PvsS_ROIAvg_5T1T = all_losses;
KNN5_loss_PvsS_ROIAvg_5T1T = overallLoss;
classifier = '7nn';
run5Training1Testing;
KNN7_accuracies_PvsS_ROIAvg_5T1T = all_accuracies;
KNN7_accuracy_PvsS_ROIAvg_5T1T = overallAccuracy;
KNN7_losses_PvsS_ROIAvg_5T1T = all_losses;
KNN7_loss_PvsS_ROIAvg_5T1T = overallLoss;
classifier = '9nn';
run5Training1Testing;
KNN9_accuracies_PvsS_ROIAvg_5T1T = all_accuracies;
KNN9_accuracy_PvsS_ROIAvg_5T1T = overallAccuracy;
KNN9_losses_PvsS_ROIAvg_5T1T = all_losses;
KNN9_loss_PvsS_ROIAvg_5T1T = overallLoss;

fprintf('P vs S label, Active Avg\n')
numVoxels = 100;
createTrainingTesting_ActiveAvg_PvsS;
classifier = '5nn';
run5Training1Testing;
KNN5_accuracies_PvsS_activeAvg_5T1T = all_accuracies;
KNN5_accuracy_PvsS_activeAvg_5T1T = overallAccuracy;
KNN5_losses_PvsS_activeAvg_5T1T = all_losses;
KNN5_loss_PvsS_activeAvg_5T1T = overallLoss;
classifier = '7nn';
run5Training1Testing;
KNN7_accuracies_PvsS_activeAvg_5T1T = all_accuracies;
KNN7_accuracy_PvsS_activeAvg_5T1T = overallAccuracy;
KNN7_losses_PvsS_activeAvg_5T1T = all_losses;
KNN7_loss_PvsS_activeAvg_5T1T = overallLoss;
classifier = '9nn';
run5Training1Testing;
KNN9_accuracies_PvsS_activeAvg_5T1T = all_accuracies;
KNN9_accuracy_PvsS_activeAvg_5T1T = overallAccuracy;
KNN9_losses_PvsS_activeAvg_5T1T = all_losses;
KNN9_loss_PvsS_activeAvg_5T1T = overallLoss;
