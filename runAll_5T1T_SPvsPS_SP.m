%%%%% SVM linear kernel and rbf kernel
SPorPS = 1;
fprintf('SP vs PS label (SP testing set only), Active\n')
numVoxels = 50;
classifier = 'svmlinear';
createTrainingTesting_Active_SPvsPS_ONE;
run5Training1TestingAltSet;
SVML_accuracies_SPvsPS_SP_active_5T1T = all_accuracies;
SVML_accuracy_SPvsPS_SP_active_5T1T = overallAccuracy;
SVML_losses_SPvsPS_SP_active_5T1T = all_losses;
SVML_loss_SPvsPS_SP_active_5T1T = overallLoss;
classifier = 'svmrbf';
run5Training1TestingAltSet;
SVMR_accuracies_SPvsPS_SP_active_5T1T = all_accuracies;
SVMR_accuracy_SPvsPS_SP_active_5T1T = overallAccuracy;
SVMR_losses_SPvsPS_SP_active_5T1T = all_losses;
SVMR_loss_SPvsPS_SP_active_5T1T = overallLoss;

fprintf('SP vs PS label (SP testing set only), ROI Avg\n')
createTrainingTesting_ROIAvg_SPvsPS_ONE;
classifier = 'svmlinear';
run5Training1TestingAltSet;
SVML_accuracies_SPvsPS_SP_ROIAvg_5T1T = all_accuracies;
SVML_accuracy_SPvsPS_SP_ROIAvg_5T1T = overallAccuracy;
SVML_losses_SPvsPS_SP_ROIAvg_5T1T = all_losses;
SVML_loss_SPvsPS_SP_ROIAvg_5T1T = overallLoss;
classifier = 'svmrbf';
run5Training1TestingAltSet;
SVMR_accuracies_SPvsPS_SP_ROIAvg_5T1T = all_accuracies;
SVMR_accuracy_SPvsPS_SP_ROIAvg_5T1T = overallAccuracy;
SVMR_losses_SPvsPS_SP_ROIAvg_5T1T = all_losses;
SVMR_loss_SPvsPS_SP_ROIAvg_5T1T = overallLoss;

fprintf('SP vs PS label (SP testing set only), Active Avg\n')
numVoxels = 100;
createTrainingTesting_ActiveAvg_SPvsPS_ONE;
classifier = 'svmlinear';
run5Training1TestingAltSet;
SVML_accuracies_SPvsPS_SP_activeAvg_5T1T = all_accuracies;
SVML_accuracy_SPvsPS_SP_activeAvg_5T1T = overallAccuracy;
SVML_losses_SPvsPS_SP_activeAvg_5T1T = all_losses;
SVML_loss_SPvsPS_SP_activeAvg_5T1T = overallLoss;
classifier = 'svmrbf';
run5Training1TestingAltSet;
SVMR_accuracies_SPvsPS_SP_activeAvg_5T1T = all_accuracies;
SVMR_accuracy_SPvsPS_SP_activeAvg_5T1T = overallAccuracy;
SVMR_losses_SPvsPS_SP_activeAvg_5T1T = all_losses;
SVMR_loss_SPvsPS_SP_activeAvg_5T1T = overallLoss;

%%%%% Naive Bayes
fprintf('SP vs PS label (SP testing set only), Active\n')
numVoxels = 50;
classifier = 'nb';
createTrainingTesting_Active_SPvsPS_ONE;
run5Training1TestingAltSet;
NB_accuracies_SPvsPS_SP_active_5T1T = all_accuracies;
NB_accuracy_SPvsPS_SP_active_5T1T = overallAccuracy;
NB_losses_SPvsPS_SP_active_5T1T = all_losses;
NB_loss_SPvsPS_SP_active_5T1T = overallLoss;

fprintf('SP vs PS label (SP testing set only), ROI Avg\n')
createTrainingTesting_ROIAvg_SPvsPS_ONE;
run5Training1TestingAltSet;
NB_accuracies_SPvsPS_SP_ROIAvg_5T1T = all_accuracies;
NB_accuracy_SPvsPS_SP_ROIAvg_5T1T = overallAccuracy;
NB_losses_SPvsPS_SP_ROIAvg_5T1T = all_losses;
NB_loss_SPvsPS_SP_ROIAvg_5T1T = overallLoss;

fprintf('SP vs PS label (SP testing set only), Active Avg\n')
numVoxels = 100;
createTrainingTesting_ActiveAvg_SPvsPS_ONE;
run5Training1TestingAltSet;
NB_accuracies_SPvsPS_SP_activeAvg_5T1T = all_accuracies;
NB_accuracy_SPvsPS_SP_activeAvg_5T1T = overallAccuracy;
NB_losses_SPvsPS_SP_activeAvg_5T1T = all_losses;
NB_loss_SPvsPS_SP_activeAvg_5T1T = overallLoss;

%%%%% KNN Classifier
SPorPS = 1;
fprintf('SP vs PS label (SP testing set only), Active\n')
numVoxels = 50;
classifier = '5nn';
createTrainingTesting_Active_SPvsPS_ONE;
run5Training1TestingAltSet;
KNN5_accuracies_SPvsPS_SP_active_5T1T = all_accuracies;
KNN5_accuracy_SPvsPS_SP_active_5T1T = overallAccuracy;
KNN5_losses_SPvsPS_SP_active_5T1T = all_losses;
KNN5_loss_SPvsPS_SP_active_5T1T = overallLoss;
classifier = '7nn';
run5Training1TestingAltSet;
KNN7_accuracies_SPvsPS_SP_active_5T1T = all_accuracies;
KNN7_accuracy_SPvsPS_SP_active_5T1T = overallAccuracy;
KNN7_losses_SPvsPS_SP_active_5T1T = all_losses;
KNN7_loss_SPvsPS_SP_active_5T1T = overallLoss;
classifier = '9nn';
run5Training1TestingAltSet;
KNN9_accuracies_SPvsPS_SP_active_5T1T = all_accuracies;
KNN9_accuracy_SPvsPS_SP_active_5T1T = overallAccuracy;
KNN9_losses_SPvsPS_SP_active_5T1T = all_losses;
KNN9_loss_SPvsPS_SP_active_5T1T = overallLoss;

fprintf('SP vs PS label (SP testing set only), ROI Avg\n')
createTrainingTesting_ROIAvg_SPvsPS_ONE;
classifier = '5nn';
run5Training1TestingAltSet;
KNN5_accuracies_SPvsPS_SP_ROIAvg_5T1T = all_accuracies;
KNN5_accuracy_SPvsPS_SP_ROIAvg_5T1T = overallAccuracy;
KNN5_losses_SPvsPS_SP_ROIAvg_5T1T = all_losses;
KNN5_loss_SPvsPS_SP_ROIAvg_5T1T = overallLoss;
classifier = '7nn';
run5Training1TestingAltSet;
KNN7_accuracies_SPvsPS_SP_ROIAvg_5T1T = all_accuracies;
KNN7_accuracy_SPvsPS_SP_ROIAvg_5T1T = overallAccuracy;
KNN7_losses_SPvsPS_SP_ROIAvg_5T1T = all_losses;
KNN7_loss_SPvsPS_SP_ROIAvg_5T1T = overallLoss;
classifier = '9nn';
run5Training1TestingAltSet;
KNN9_accuracies_SPvsPS_SP_ROIAvg_5T1T = all_accuracies;
KNN9_accuracy_SPvsPS_SP_ROIAvg_5T1T = overallAccuracy;
KNN9_losses_SPvsPS_SP_ROIAvg_5T1T = all_losses;
KNN9_loss_SPvsPS_SP_ROIAvg_5T1T = overallLoss;

fprintf('SP vs PS label (SP testing set only), Active Avg\n')
numVoxels = 100;
createTrainingTesting_ActiveAvg_SPvsPS_ONE;
classifier = '5nn';
run5Training1TestingAltSet;
KNN5_accuracies_SPvsPS_SP_activeAvg_5T1T = all_accuracies;
KNN5_accuracy_SPvsPS_SP_activeAvg_5T1T = overallAccuracy;
KNN5_losses_SPvsPS_SP_activeAvg_5T1T = all_losses;
KNN5_loss_SPvsPS_SP_activeAvg_5T1T = overallLoss;
classifier = '7nn';
run5Training1TestingAltSet;
KNN7_accuracies_SPvsPS_SP_activeAvg_5T1T = all_accuracies;
KNN7_accuracy_SPvsPS_SP_activeAvg_5T1T = overallAccuracy;
KNN7_losses_SPvsPS_SP_activeAvg_5T1T = all_losses;
KNN7_loss_SPvsPS_SP_activeAvg_5T1T = overallLoss;
classifier = '9nn';
run5Training1TestingAltSet;
KNN9_accuracies_SPvsPS_SP_activeAvg_5T1T = all_accuracies;
KNN9_accuracy_SPvsPS_SP_activeAvg_5T1T = overallAccuracy;
KNN9_losses_SPvsPS_SP_activeAvg_5T1T = all_losses;
KNN9_loss_SPvsPS_SP_activeAvg_5T1T = overallLoss;