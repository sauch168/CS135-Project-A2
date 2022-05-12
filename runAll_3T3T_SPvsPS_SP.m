%%%%% SVM linear kernel and rbf kernel
SPorPS = 1;
fprintf('SP vs PS label (SP testing set only), Active\n')
numVoxels = 50;
classifier = 'svmlinear';
createTrainingTesting_Active_SPvsPS_ONE;
run3Training3TestingAltSet;
SVML_accuracies_SPvsPS_SP_active_3T3T = all_accuracies;
SVML_accuracy_SPvsPS_SP_active_3T3T = overallAccuracy;
SVML_losses_SPvsPS_SP_active_3T3T = all_losses;
SVML_loss_SPvsPS_SP_active_3T3T = overallLoss;
classifier = 'svmrbf';
run3Training3TestingAltSet;
SVMR_accuracies_SPvsPS_SP_active_3T3T = all_accuracies;
SVMR_accuracy_SPvsPS_SP_active_3T3T = overallAccuracy;
SVMR_losses_SPvsPS_SP_active_3T3T = all_losses;
SVMR_loss_SPvsPS_SP_active_3T3T = overallLoss;

fprintf('SP vs PS label (SP testing set only), ROI Avg')
createTrainingTesting_ROIAvg_SPvsPS_ONE;
classifier = 'svmlinear';
run3Training3TestingAltSet;
SVML_accuracies_SPvsPS_SP_ROIAvg_3T3T = all_accuracies;
SVML_accuracy_SPvsPS_SP_ROIAvg_3T3T = overallAccuracy;
SVML_losses_SPvsPS_SP_ROIAvg_3T3T = all_losses;
SVML_loss_SPvsPS_SP_ROIAvg_3T3T = overallLoss;
classifier = 'svmrbf';
run3Training3TestingAltSet;
SVMR_accuracies_SPvsPS_SP_ROIAvg_3T3T = all_accuracies;
SVMR_accuracy_SPvsPS_SP_ROIAvg_3T3T = overallAccuracy;
SVMR_losses_SPvsPS_SP_ROIAvg_3T3T = all_losses;
SVMR_loss_SPvsPS_SP_ROIAvg_3T3T = overallLoss;

fprintf('SP vs PS label (SP testing set only), Active Avg')
numVoxels = 100;
createTrainingTesting_ActiveAvg_SPvsPS_ONE;
classifier = 'svmlinear';
run3Training3TestingAltSet;
SVML_accuracies_SPvsPS_SP_activeAvg_3T3T = all_accuracies;
SVML_accuracy_SPvsPS_SP_activeAvg_3T3T = overallAccuracy;
SVML_losses_SPvsPS_SP_activeAvg_3T3T = all_losses;
SVML_loss_SPvsPS_SP_activeAvg_3T3T = overallLoss;
classifier = 'svmrbf';
run3Training3TestingAltSet;
SVMR_accuracies_SPvsPS_SP_activeAvg_3T3T = all_accuracies;
SVMR_accuracy_SPvsPS_SP_activeAvg_3T3T = overallAccuracy;
SVMR_losses_SPvsPS_SP_activeAvg_3T3T = all_losses;
SVMR_loss_SPvsPS_SP_activeAvg_3T3T = overallLoss;

%%%%% Naive Bayes
fprintf('SP vs PS label (SP testing set only), Active\n')
numVoxels = 50;
classifier = 'nb';
createTrainingTesting_Active_SPvsPS_ONE;
run3Training3TestingAltSet;
NB_accuracies_SPvsPS_SP_active_3T3T = all_accuracies;
NB_accuracy_SPvsPS_SP_active_3T3T = overallAccuracy;
NB_losses_SPvsPS_SP_active_3T3T = all_losses;
NB_loss_SPvsPS_SP_active_3T3T = overallLoss;

fprintf('SP vs PS label (SP testing set only), ROI Avg')
createTrainingTesting_ROIAvg_SPvsPS_ONE;
run3Training3TestingAltSet;
NB_accuracies_SPvsPS_SP_ROIAvg_3T3T = all_accuracies;
NB_accuracy_SPvsPS_SP_ROIAvg_3T3T = overallAccuracy;
NB_losses_SPvsPS_SP_ROIAvg_3T3T = all_losses;
NB_loss_SPvsPS_SP_ROIAvg_3T3T = overallLoss;

fprintf('SP vs PS label (SP testing set only), Active Avg')
numVoxels = 100;
createTrainingTesting_ActiveAvg_SPvsPS_ONE;
run3Training3TestingAltSet;
NB_accuracies_SPvsPS_SP_activeAvg_3T3T = all_accuracies;
NB_accuracy_SPvsPS_SP_activeAvg_3T3T = overallAccuracy;
NB_losses_SPvsPS_SP_activeAvg_3T3T = all_losses;
NB_loss_SPvsPS_SP_activeAvg_3T3T = overallLoss;