%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SP vs PS label (testing set is SP + PS)

%%%%% SVM linear kernel
fprintf('SP vs PS label, Active\n')
numVoxels = 50;
classifier = 'svmlinear';
create3Training3Testing_Active_SPvsPS
run3Training3Testing
SVM_accuracies_SPvsPS_active = all_accuracies;
SVM_accuracy_SPvsPS_active = overallAccuracy;
SVM_losses_SPvsPS_active = all_losses;
SVM_loss_SPvsPS_active = overallLoss;

fprintf('SP vs PS label, ROI Avg')
create3Training3Testing_ROIAvg_SPvsPS
run3Training3Testing
SVM_accuracies_SPvsPS_ROIAvg = all_accuracies;
SVM_accuracy_SPvsPS_ROIAvg = overallAccuracy;
SVM_losses_SPvsPS_ROIAvg = all_losses;
SVM_loss_SPvsPS_ROIAvg = overallLoss;

fprintf('SP vs PS label, Active Avg')
numVoxels = 100;
create3Training3Testing_ActiveAvg_SPvsPS
run3Training3Testing
SVM_accuracies_SPvsPS_activeAvg = all_accuracies;
SVM_accuracy_SPvsPS_activeAvg = overallAccuracy;
SVM_losses_SPvsPS_activeAvg = all_losses;
SVM_loss_SPvsPS_activeAvg = overallLoss;