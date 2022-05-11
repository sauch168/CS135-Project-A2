initialSetup
%% SP vs PS label

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

%%%%% Naive Bayes
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

%% Sentence w/o negation vs sentence w/ negation

%%%%% SVM linear kernel
fprintf('Cond 2 vs Cond 3 Label (No negation vs negation), Active\n')
numVoxels = 50;
classifier = 'svmlinear';
create3Training3Testing_Active_Cond
run3Training3Testing
SVM_accuracies_Cond_active = all_accuracies;
SVM_accuracy_Cond_active = overallAccuracy;
SVM_losses_Cond_active = all_losses;
SVM_loss_Cond_active = overallLoss;

fprintf('Cond 2 vs Cond 3 Label (No negation vs negation), ROIAvg\n')
create3Training3Testing_ROIAvg_Cond
run3Training3Testing
SVM_accuracies_Cond_ROIAvg = all_accuracies;
SVM_accuracy_Cond_ROIAvg = overallAccuracy;
SVM_losses_Cond_ROIAvg = all_losses;
SVM_loss_Cond_ROIAvg = overallLoss;

fprintf('Cond 2 vs Cond 3 Label (No negation vs negation), Active Avg\n')

numVoxels = 100;
create3Training3Testing_ActiveAvg_Cond
run3Training3Testing
SVM_accuracies_Cond_activeAvg = all_accuracies;
SVM_accuracy_Cond_activeAvg = overallAccuracy;
SVM_losses_Cond_activeAvg = all_losses;
SVM_loss_Cond_activeAvg = overallLoss;

%%%%% Naive Bayes
fprintf('NB: Cond 2 vs Cond 3 Label (No negation vs negation), Active\n')
numVoxels = 50;
classifier = 'nb';
create3Training3Testing_Active_Cond
run3Training3Testing
NB_accuracies_Cond_active = all_accuracies;
NB_accuracy_Cond_active = overallAccuracy;
NB_losses_Cond_active = all_losses;
NB_loss_Cond_active = overallLoss;

fprintf('NB: Cond 2 vs Cond 3 Label (No negation vs negation), ROIAvg\n')
create3Training3Testing_ROIAvg_Cond
run3Training3Testing
NB_accuracies_Cond_ROIAvg = all_accuracies;
NB_accuracy_Cond_ROIAvg = overallAccuracy;
NB_losses_Cond_ROIAvg = all_losses;
NB_loss_Cond_ROIAvg = overallLoss;

fprintf('NB: Cond 2 vs Cond 3 Label (No negation vs negation), Active Avg\n')
numVoxels = 100;
create3Training3Testing_ActiveAvg_Cond
run3Training3Testing
NB_accuracies_Cond_activeAvg = all_accuracies;
NB_accuracy_Cond_activeAvg = overallAccuracy;
NB_losses_Cond_activeAvg = all_losses;
NB_loss_Cond_activeAvg = overallLoss;
