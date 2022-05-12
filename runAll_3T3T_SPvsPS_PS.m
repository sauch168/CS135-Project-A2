%%%%% SVM linear kernel and rbf kernel
SPorPS = 2;
fprintf('SP vs PS label (PS testing set only), Active\n')
numVoxels = 50;
classifier = 'svmlinear';
createTrainingTesting_Active_SPvsPS_ONE;
run3Training3TestingAltSet;
SVML_accuracies_SPvsPS_PS_active_3T3T = all_accuracies;
SVML_accuracy_SPvsPS_PS_active_3T3T = overallAccuracy;
SVML_losses_SPvsPS_PS_active_3T3T = all_losses;
SVML_loss_SPvsPS_PS_active_3T3T = overallLoss;
classifier = 'svmrbf';
run3Training3TestingAltSet;
SVMR_accuracies_SPvsPS_PS_active_3T3T = all_accuracies;
SVMR_accuracy_SPvsPS_PS_active_3T3T = overallAccuracy;
SVMR_losses_SPvsPS_PS_active_3T3T = all_losses;
SVMR_loss_SPvsPS_PS_active_3T3T = overallLoss;

fprintf('SP vs PS label (PS testing set only), ROI Avg\n')
createTrainingTesting_ROIAvg_SPvsPS_ONE;
classifier = 'svmlinear';
run3Training3TestingAltSet;
SVML_accuracies_SPvsPS_PS_ROIAvg_3T3T = all_accuracies;
SVML_accuracy_SPvsPS_PS_ROIAvg_3T3T = overallAccuracy;
SVML_losses_SPvsPS_PS_ROIAvg_3T3T = all_losses;
SVML_loss_SPvsPS_PS_ROIAvg_3T3T = overallLoss;
classifier = 'svmrbf';
run3Training3TestingAltSet;
SVMR_accuracies_SPvsPS_PS_ROIAvg_3T3T = all_accuracies;
SVMR_accuracy_SPvsPS_PS_ROIAvg_3T3T = overallAccuracy;
SVMR_losses_SPvsPS_PS_ROIAvg_3T3T = all_losses;
SVMR_loss_SPvsPS_PS_ROIAvg_3T3T = overallLoss;

fprintf('SP vs PS label (PS testing set only), Active Avg\n')
numVoxels = 100;
createTrainingTesting_ActiveAvg_SPvsPS_ONE
classifier = 'svmlinear';
run3Training3TestingAltSet
SVML_accuracies_SPvsPS_PS_activeAvg = all_accuracies;
SVML_accuracy_SPvsPS_PS_activeAvg = overallAccuracy;
SVML_losses_SPvsPS_PS_activeAvg = all_losses;
SVML_loss_SPvsPS_PS_activeAvg = overallLoss;
classifier = 'svmrbf';
run3Training3TestingAltSet
SVMR_accuracies_SPvsPS_PS_activeAvg_3T3T = all_accuracies;
SVMR_accuracy_SPvsPS_PS_activeAvg_3T3T = overallAccuracy;
SVMR_losses_SPvsPS_PS_activeAvg_3T3T = all_losses;
SVMR_loss_SPvsPS_PS_activeAvg_3T3T = overallLoss;

%%%%% Naive Bayes
fprintf('--------Naive Bayes----------')
fprintf('SP vs PS label (PS testing set only), Active\n')
numVoxels = 50;
classifier = 'nb';
createTrainingTesting_Active_SPvsPS_ONE;
run3Training3TestingAltSet;
NB_accuracies_SPvsPS_PS_active_3T3T = all_accuracies;
NB_accuracy_SPvsPS_PS_active_3T3T = overallAccuracy;
NB_losses_SPvsPS_PS_active_3T3T = all_losses;
NB_loss_SPvsPS_PS_active_3T3T = overallLoss;

fprintf('SP vs PS label (PS testing set only), ROI Avg\n')
createTrainingTesting_ROIAvg_SPvsPS_ONE;
run3Training3TestingAltSet;
NB_accuracies_SPvsPS_PS_ROIAvg_3T3T = all_accuracies;
NB_accuracy_SPvsPS_PS_ROIAvg_3T3T = overallAccuracy;
NB_losses_SPvsPS_PS_ROIAvg_3T3T = all_losses;
NB_loss_SPvsPS_PS_ROIAvg_3T3T = overallLoss;

fprintf('SP vs PS label (PS testing set only), Active Avg\n')
numVoxels = 100;
createTrainingTesting_ActiveAvg_SPvsPS_ONE;
run3Training3TestingAltSet;
NB_accuracies_SPvsPS_PS_activeAvg_3T3T = all_accuracies;
NB_accuracy_SPvsPS_PS_activeAvg_3T3T = overallAccuracy;
NB_losses_SPvsPS_PS_activeAvg_3T3T = all_losses;
NB_loss_SPvsPS_PS_activeAvg_3T3T = overallLoss;

%%%%% KNN Classifier
SPorPS = 2;
fprintf('SP vs PS label (PS testing set only), Active\n')
numVoxels = 50;
classifier = '5nn';
createTrainingTesting_Active_SPvsPS_ONE;
run3Training3TestingAltSet;
KNN5_accuracies_SPvsPS_PS_active_3T3T = all_accuracies;
KNN5_accuracy_SPvsPS_PS_active_3T3T = overallAccuracy;
KNN5_losses_SPvsPS_PS_active_3T3T = all_losses;
KNN5_loss_SPvsPS_PS_active_3T3T = overallLoss;
classifier = '7nn';
run3Training3TestingAltSet;
KNN7_accuracies_SPvsPS_PS_active_3T3T = all_accuracies;
KNN7_accuracy_SPvsPS_PS_active_3T3T = overallAccuracy;
KNN7_losses_SPvsPS_PS_active_3T3T = all_losses;
KNN7_loss_SPvsPS_PS_active_3T3T = overallLoss;
classifier = '9nn';
run3Training3TestingAltSet;
KNN9_accuracies_SPvsPS_PS_active_3T3T = all_accuracies;
KNN9_accuracy_SPvsPS_PS_active_3T3T = overallAccuracy;
KNN9_losses_SPvsPS_PS_active_3T3T = all_losses;
KNN9_loss_SPvsPS_PS_active_3T3T = overallLoss;

fprintf('SP vs PS label (PS testing set only), ROI Avg\n')
createTrainingTesting_ROIAvg_SPvsPS_ONE;
classifier = '5nn';
run3Training3TestingAltSet;
KNN5_accuracies_SPvsPS_PS_ROIAvg_3T3T = all_accuracies;
KNN5_accuracy_SPvsPS_PS_ROIAvg_3T3T = overallAccuracy;
KNN5_losses_SPvsPS_PS_ROIAvg_3T3T = all_losses;
KNN5_loss_SPvsPS_PS_ROIAvg_3T3T = overallLoss;
classifier = '7nn';
run3Training3TestingAltSet;
KNN7_accuracies_SPvsPS_PS_ROIAvg_3T3T = all_accuracies;
KNN7_accuracy_SPvsPS_PS_ROIAvg_3T3T = overallAccuracy;
KNN7_losses_SPvsPS_PS_ROIAvg_3T3T = all_losses;
KNN7_loss_SPvsPS_PS_ROIAvg_3T3T = overallLoss;
classifier = '9nn';
run3Training3TestingAltSet;
KNN9_accuracies_SPvsPS_PS_ROIAvg_3T3T = all_accuracies;
KNN9_accuracy_SPvsPS_PS_ROIAvg_3T3T = overallAccuracy;
KNN9_losses_SPvsPS_PS_ROIAvg_3T3T = all_losses;
KNN9_loss_SPvsPS_PS_ROIAvg_3T3T = overallLoss;

fprintf('SP vs PS label (PS testing set only), Active Avg\n')
numVoxels = 100;
createTrainingTesting_ActiveAvg_SPvsPS_ONE
classifier = '5nn';
run3Training3TestingAltSet
KNN5_accuracies_SPvsPS_PS_activeAvg = all_accuracies;
KNN5_accuracy_SPvsPS_PS_activeAvg = overallAccuracy;
KNN5_losses_SPvsPS_PS_activeAvg = all_losses;
KNN5_loss_SPvsPS_PS_activeAvg = overallLoss;
classifier = '7nn';
run3Training3TestingAltSet
KNN7_accuracies_SPvsPS_PS_activeAvg_3T3T = all_accuracies;
KNN7_accuracy_SPvsPS_PS_activeAvg_3T3T = overallAccuracy;
KNN7_losses_SPvsPS_PS_activeAvg_3T3T = all_losses;
KNN7_loss_SPvsPS_PS_activeAvg_3T3T = overallLoss;
classifier = '9nn';
run3Training3TestingAltSet
KNN9_accuracies_SPvsPS_PS_activeAvg_3T3T = all_accuracies;
KNN9_accuracy_SPvsPS_PS_activeAvg_3T3T = overallAccuracy;
KNN9_losses_SPvsPS_PS_activeAvg_3T3T = all_losses;
KNN9_loss_SPvsPS_PS_activeAvg_3T3T = overallLoss;