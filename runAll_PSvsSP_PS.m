SPorPS = 2;
fprintf('SP vs PS label (SP testing set only), Active\n')
numVoxels = 50;
classifier = 'svmlinear';
create3Training3Testing_Active_SPvsPS_ONE
run3Training3TestingAltSet
SVM_accuracies_SPvsPS_PS_active = all_accuracies;
SVM_accuracy_SPvsPS_PS_active = overallAccuracy;
SVM_losses_SPvsPS_PS_active = all_losses;
SVM_loss_SPvsPS_PS_active = overallLoss;

fprintf('SP vs PS label (SP testing set only), ROI Avg')
create3Training3Testing_ROIAvg_SPvsPS_ONE
run3Training3TestingAltSet
SVM_accuracies_SPvsPS_PS_ROIAvg = all_accuracies;
SVM_accuracy_SPvsPS_PS_ROIAvg = overallAccuracy;
SVM_losses_SPvsPS_PS_ROIAvg = all_losses;
SVM_loss_SPvsPS_PS_ROIAvg = overallLoss;

fprintf('SP vs PS label (SP testing set only), Active Avg')
numVoxels = 100;
create3Training3Testing_ActiveAvg_SPvsPS_ONE
run3Training3TestingAltSet
SVM_accuracies_SPvsPS_PS_activeAvg = all_accuracies;
SVM_accuracy_SPvsPS_PS_activeAvg = overallAccuracy;
SVM_losses_SPvsPS_PS_activeAvg = all_losses;
SVM_loss_SPvsPS_PS_activeAvg = overallLoss;

%%%%% Naive Bayes
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