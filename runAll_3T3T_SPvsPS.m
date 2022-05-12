%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SP vs PS label (testing set is SP + PS)

%%%%% SVM linear kernel and RBF kernel
fprintf('SP vs PS label, Active\n')
numVoxels = 50;
classifier = 'svmlinear';
createTrainingTesting_Active_SPvsPS;
run3Training3Testing;
SVML_accuracies_SPvsPS_active_3T3T = all_accuracies;
SVML_accuracy_SPvsPS_active_3T3T = overallAccuracy;
SVML_losses_SPvsPS_active_3T3T = all_losses;
SVML_loss_SPvsPS_active_3T3T = overallLoss;
classifier = 'svmrbf';
run3Training3Testing;
SVMR_accuracies_SPvsPS_active_3T3T = all_accuracies;
SVMR_accuracy_SPvsPS_active_3T3T = overallAccuracy;
SVMR_losses_SPvsPS_active_3T3T = all_losses;
SVMR_loss_SPvsPS_active_3T3T = overallLoss;

fprintf('SP vs PS label, ROI Avg\n')
classifier = 'svmlinear';
run3Training3Testing;
SVML_accuracies_SPvsPS_ROIAvg_3T3T = all_accuracies;
SVML_accuracy_SPvsPS_ROIAvg_3T3T = overallAccuracy;
SVML_losses_SPvsPS_ROIAvg_3T3T = all_losses;
SVML_loss_SPvsPS_ROIAvg_3T3T = overallLoss;
classifier = 'svmrbf';
run3Training3Testing;
SVMR_accuracies_SPvsPS_ROIAvg_3T3T = all_accuracies;
SVMR_accuracy_SPvsPS_ROIAvg_3T3T = overallAccuracy;
SVMR_losses_SPvsPS_ROIAvg_3T3T = all_losses;
SVMR_loss_SPvsPS_ROIAvg_3T3T = overallLoss;

fprintf('SP vs PS label, Active Avg\n')
numVoxels = 100;
createTrainingTesting_ActiveAvg_SPvsPS
classifier = 'svmlinear';
run3Training3Testing;
SVML_accuracies_SPvsPS_activeAvg_3T3T = all_accuracies;
SVML_accuracy_SPvsPS_activeAvg_3T3T = overallAccuracy;
SVML_losses_SPvsPS_activeAvg_3T3T = all_losses;
SVML_loss_SPvsPS_activeAvg_3T3T = overallLoss;
classifier = 'svmrbf';
run3Training3Testing;
SVMR_accuracies_SPvsPS_activeAvg_3T3T = all_accuracies;
SVMR_accuracy_SPvsPS_activeAvg_3T3T = overallAccuracy;
SVMR_losses_SPvsPS_activeAvg_3T3T = all_losses;
SVMR_loss_SPvsPS_activeAvg_3T3T = overallLoss;

%%%%% Naive Bayes
fprintf('--------Naive Bayes----------')
fprintf('SP vs PS label, Active\n')
numVoxels = 50;
classifier = 'nb';
createTrainingTesting_Active_SPvsPS;
run3Training3Testing;
NB_accuracies_SPvsPS_active_3T3T = all_accuracies;
NB_accuracy_SPvsPS_active_3T3T = overallAccuracy;
NB_losses_SPvsPS_active_3T3T = all_losses;
NB_loss_SPvsPS_active_3T3T = overallLoss;

fprintf('SP vs PS label, ROI Avg\n')
createTrainingTesting_ROIAvg_SPvsPS;
run3Training3Testing;
NB_accuracies_SPvsPS_ROIAvg_3T3T = all_accuracies;
NB_accuracy_SPvsPS_ROIAvg_3T3T = overallAccuracy;
NB_losses_SPvsPS_ROIAvg_3T3T = all_losses;
NB_loss_SPvsPS_ROIAvg_3T3T = overallLoss;

fprintf('SP vs PS label, Active Avg\n')
numVoxels = 100;
createTrainingTesting_ActiveAvg_SPvsPS;
run3Training3Testing;
NB_accuracies_SPvsPS_activeAvg_3T3T = all_accuracies;
NB_accuracy_SPvsPS_activeAvg_3T3T = overallAccuracy;
NB_losses_SPvsPS_activeAvg_3T3T = all_losses;
NB_loss_SPvsPS_activeAvg_3T3T = overallLoss;

%%%%% KNN Classifier
fprintf('SP vs PS label, Active\n')
numVoxels = 50;
classifier = '5nn';
createTrainingTesting_Active_SPvsPS;
run3Training3Testing;
KNN5_accuracies_SPvsPS_active_3T3T = all_accuracies;
KNN5_accuracy_SPvsPS_active_3T3T = overallAccuracy;
KNN5_losses_SPvsPS_active_3T3T = all_losses;
KNN5_loss_SPvsPS_active_3T3T = overallLoss;
classifier = '7nn';
run3Training3Testing;
KNN7_accuracies_SPvsPS_active_3T3T = all_accuracies;
KNN7_accuracy_SPvsPS_active_3T3T = overallAccuracy;
KNN7_losses_SPvsPS_active_3T3T = all_losses;
KNN7_loss_SPvsPS_active_3T3T = overallLoss;
classifier = '9nn';
run3Training3Testing;
KNN9_accuracies_SPvsPS_active_3T3T = all_accuracies;
KNN9_accuracy_SPvsPS_active_3T3T = overallAccuracy;
KNN9_losses_SPvsPS_active_3T3T = all_losses;
KNN9_loss_SPvsPS_active_3T3T = overallLoss;

fprintf('SP vs PS label, ROI Avg\n')
classifier = '5nn';
run3Training3Testing;
KNN5_accuracies_SPvsPS_ROIAvg_3T3T = all_accuracies;
KNN5_accuracy_SPvsPS_ROIAvg_3T3T = overallAccuracy;
KNN5_losses_SPvsPS_ROIAvg_3T3T = all_losses;
KNN5_loss_SPvsPS_ROIAvg_3T3T = overallLoss;
classifier = '7nn';
run3Training3Testing;
KNN7_accuracies_SPvsPS_ROIAvg_3T3T = all_accuracies;
KNN7_accuracy_SPvsPS_ROIAvg_3T3T = overallAccuracy;
KNN7_losses_SPvsPS_ROIAvg_3T3T = all_losses;
KNN7_loss_SPvsPS_ROIAvg_3T3T = overallLoss;
classifier = '9nn';
run3Training3Testing;
KNN9_accuracies_SPvsPS_ROIAvg_3T3T = all_accuracies;
KNN9_accuracy_SPvsPS_ROIAvg_3T3T = overallAccuracy;
KNN9_losses_SPvsPS_ROIAvg_3T3T = all_losses;
KNN9_loss_SPvsPS_ROIAvg_3T3T = overallLoss;

fprintf('SP vs PS label, Active Avg\n')
numVoxels = 100;
createTrainingTesting_ActiveAvg_SPvsPS
classifier = '5nn';
run3Training3Testing;
KNN5_accuracies_SPvsPS_activeAvg_3T3T = all_accuracies;
KNN5_accuracy_SPvsPS_activeAvg_3T3T = overallAccuracy;
KNN5_losses_SPvsPS_activeAvg_3T3T = all_losses;
KNN5_loss_SPvsPS_activeAvg_3T3T = overallLoss;
classifier = '7nn';
run3Training3Testing;
KNN7_accuracies_SPvsPS_activeAvg_3T3T = all_accuracies;
KNN7_accuracy_SPvsPS_activeAvg_3T3T = overallAccuracy;
KNN7_losses_SPvsPS_activeAvg_3T3T = all_losses;
KNN7_loss_SPvsPS_activeAvg_3T3T = overallLoss;
classifier = '9nn';
run3Training3Testing;
KNN9_accuracies_SPvsPS_activeAvg_3T3T = all_accuracies;
KNN9_accuracy_SPvsPS_activeAvg_3T3T = overallAccuracy;
KNN9_losses_SPvsPS_activeAvg_3T3T = all_losses;
KNN9_loss_SPvsPS_activeAvg_3T3T = overallLoss;