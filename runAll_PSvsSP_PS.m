%%%%% SVM linear kernel and rbf kernel
SPorPS = 2;
fprintf('SP vs PS label (SP testing set only), Active\n')
numVoxels = 50;
classifier = 'svmlinear';
create3Training3Testing_Active_SPvsPS_ONE
run3Training3TestingAltSet
SVML_accuracies_SPvsPS_PS_active = all_accuracies;
SVML_accuracy_SPvsPS_PS_active = overallAccuracy;
SVML_losses_SPvsPS_PS_active = all_losses;
SVML_loss_SPvsPS_PS_active = overallLoss;
classifier = 'svmrbf';
run3Training3TestingAltSet
SVMR_accuracies_SPvsPS_PS_active = all_accuracies;
SVMR_accuracy_SPvsPS_PS_active = overallAccuracy;
SVMR_losses_SPvsPS_PS_active = all_losses;
SVMR_loss_SPvsPS_PS_active = overallLoss;

fprintf('SP vs PS label (SP testing set only), ROI Avg')
create3Training3Testing_ROIAvg_SPvsPS_ONE
classifier = 'svmlinear';
run3Training3TestingAltSet
SVML_accuracies_SPvsPS_PS_ROIAvg = all_accuracies;
SVML_accuracy_SPvsPS_PS_ROIAvg = overallAccuracy;
SVML_losses_SPvsPS_PS_ROIAvg = all_losses;
SVML_loss_SPvsPS_PS_ROIAvg = overallLoss;
classifier = 'svmrbf';
run3Training3TestingAltSet
SVMR_accuracies_SPvsPS_PS_ROIAvg = all_accuracies;
SVMR_accuracy_SPvsPS_PS_ROIAvg = overallAccuracy;
SVMR_losses_SPvsPS_PS_ROIAvg = all_losses;
SVMR_loss_SPvsPS_PS_ROIAvg = overallLoss;

fprintf('SP vs PS label (SP testing set only), Active Avg')
numVoxels = 100;
create3Training3Testing_ActiveAvg_SPvsPS_ONE
classifier = 'svmlinear';
run3Training3TestingAltSet
SVML_accuracies_SPvsPS_PS_activeAvg = all_accuracies;
SVML_accuracy_SPvsPS_PS_activeAvg = overallAccuracy;
SVML_losses_SPvsPS_PS_activeAvg = all_losses;
SVML_loss_SPvsPS_PS_activeAvg = overallLoss;
classifier = 'svmrbf';
run3Training3TestingAltSet
SVMR_accuracies_SPvsPS_PS_ROIAvg = all_accuracies;
SVMR_accuracy_SPvsPS_PS_ROIAvg = overallAccuracy;
SVMR_losses_SPvsPS_PS_ROIAvg = all_losses;
SVMR_loss_SPvsPS_PS_ROIAvg = overallLoss;

%%%%% Naive Bayes
fprintf('--------Naive Bayes----------')
fprintf('SP vs PS label (SP testing set only), Active\n')
numVoxels = 50;
classifier = 'nb';
create3Training3Testing_Active_SPvsPS_ONE
run3Training3TestingAltSet
NB_accuracies_SPvsPS_PS_active = all_accuracies;
NB_accuracy_SPvsPS_PS_active = overallAccuracy;
NB_losses_SPvsPS_PS_active = all_losses;
NB_loss_SPvsPS_PS_active = overallLoss;

fprintf('SP vs PS label (SP testing set only), ROI Avg')
create3Training3Testing_ROIAvg_SPvsPS_ONE
run3Training3TestingAltSet
NB_accuracies_SPvsPS_PS_ROIAvg = all_accuracies;
NB_accuracy_SPvsPS_PS_ROIAvg = overallAccuracy;
NB_losses_SPvsPS_PS_ROIAvg = all_losses;
NB_loss_SPvsPS_PS_ROIAvg = overallLoss;

fprintf('SP vs PS label (SP testing set only), Active Avg')
numVoxels = 100;
create3Training3Testing_ActiveAvg_SPvsPS_ONE
run3Training3TestingAltSet
NB_accuracies_SPvsPS_PS_activeAvg = all_accuracies;
NB_accuracy_SPvsPS_PS_activeAvg = overallAccuracy;
NB_losses_SPvsPS_PS_activeAvg = all_losses;
NB_loss_SPvsPS_PS_activeAvg = overallLoss;