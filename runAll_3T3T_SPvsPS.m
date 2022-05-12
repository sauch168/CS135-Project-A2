%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SP vs PS label (testing set is SP + PS)

%%%%% SVM linear kernel and RBF kernel
fprintf('SP vs PS label, Active\n')
numVoxels = 50;
classifier = 'svmlinear';
create3Training3Testing_Active_SPvsPS
run3Training3Testing
SVML_accuracies_SPvsPS_active = all_accuracies;
SVML_accuracy_SPvsPS_active = overallAccuracy;
SVML_losses_SPvsPS_active = all_losses;
SVML_loss_SPvsPS_active = overallLoss;
classifier = 'svmrbf';
run3Training3Testing
SVMR_accuracies_SPvsPS_active = all_accuracies;
SVMR_accuracy_SPvsPS_active = overallAccuracy;
SVMR_losses_SPvsPS_active = all_losses;
SVMR_loss_SPvsPS_active = overallLoss;

fprintf('SP vs PS label, ROI Avg')
classifier = 'svmlinear';
run3Training3Testing
SVML_accuracies_SPvsPS_ROIAvg = all_accuracies;
SVML_accuracy_SPvsPS_ROIAvg = overallAccuracy;
SVML_losses_SPvsPS_ROIAvg = all_losses;
SVML_loss_SPvsPS_ROIAvg = overallLoss;
classifier = 'svmrbf';
run3Training3Testing
SVMR_accuracies_SPvsPS_ROIAvg = all_accuracies;
SVMR_accuracy_SPvsPS_ROIAvg = overallAccuracy;
SVMR_losses_SPvsPS_ROIAvg = all_losses;
SVMR_loss_SPvsPS_ROIAvg = overallLoss;

fprintf('SP vs PS label, Active Avg')
numVoxels = 100;
create3Training3Testing_ActiveAvg_SPvsPS
classifier = 'svmlinear';
run3Training3Testing
SVML_accuracies_SPvsPS_activeAvg = all_accuracies;
SVML_accuracy_SPvsPS_activeAvg = overallAccuracy;
SVML_losses_SPvsPS_activeAvg = all_losses;
SVML_loss_SPvsPS_activeAvg = overallLoss;
classifier = 'svmrbf';
run3Training3Testing
SVMR_accuracies_SPvsPS_activeAvg = all_accuracies;
SVMR_accuracy_SPvsPS_activeAvg = overallAccuracy;
SVMR_losses_SPvsPS_activeAvg = all_losses;
SVMR_loss_SPvsPS_activeAvg = overallLoss;

%%%%% Naive Bayes
fprintf('--------Naive Bayes----------')
fprintf('SP vs PS label, Active\n')
numVoxels = 50;
classifier = 'nb';
create3Training3Testing_Active_SPvsPS
run3Training3Testing
NB_accuracies_SPvsPS_active = all_accuracies;
NB_accuracy_SPvsPS_active = overallAccuracy;
NB_losses_SPvsPS_active = all_losses;
NB_loss_SPvsPS_active = overallLoss;

fprintf('SP vs PS label, ROI Avg')
create3Training3Testing_ROIAvg_SPvsPS
run3Training3Testing
NB_accuracies_SPvsPS_ROIAvg = all_accuracies;
NB_accuracy_SPvsPS_ROIAvg = overallAccuracy;
NB_losses_SPvsPS_ROIAvg = all_losses;
NB_loss_SPvsPS_ROIAvg = overallLoss;

fprintf('SP vs PS label, Active Avg')
numVoxels = 100;
create3Training3Testing_ActiveAvg_SPvsPS
run3Training3Testing
NB_accuracies_SPvsPS_activeAvg = all_accuracies;
NB_accuracy_SPvsPS_activeAvg = overallAccuracy;
NB_losses_SPvsPS_activeAvg = all_losses;
NB_loss_SPvsPS_activeAvg = overallLoss;