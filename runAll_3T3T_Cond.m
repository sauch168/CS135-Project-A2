%%%%% SVM linear kernel and rbf kernel
fprintf('Cond 2 vs Cond 3 Label (No negation vs negation), Active\n')
numVoxels = 50;
classifier = 'svmlinear';
create3Training3Testing_Active_Cond
run3Training3Testing
SVML_accuracies_Cond_active = all_accuracies;
SVML_accuracy_Cond_active = overallAccuracy;
SVML_losses_Cond_active = all_losses;
SVML_loss_Cond_active = overallLoss;
classifier = 'svmrbf';
run3Training3Testing
SVMR_accuracies_Cond_active = all_accuracies;
SVMR_accuracy_Cond_active = overallAccuracy;
SVMR_losses_Cond_active = all_losses;
SVMR_loss_Cond_active = overallLoss;

fprintf('Cond 2 vs Cond 3 Label (No negation vs negation), ROIAvg\n')
create3Training3Testing_ROIAvg_Cond
classifier = 'svmlinear';
run3Training3Testing
SVML_accuracies_Cond_ROIAvg = all_accuracies;
SVML_accuracy_Cond_ROIAvg = overallAccuracy;
SVML_losses_Cond_ROIAvg = all_losses;
SVML_loss_Cond_ROIAvg = overallLoss;
classifier = 'svmrbf';
run3Training3Testing
SVMR_accuracies_Cond_ROIAvg = all_accuracies;
SVMR_accuracy_Cond_ROIAvg = overallAccuracy;
SVMR_losses_Cond_ROIAvg = all_losses;
SVMR_loss_Cond_ROIAvg = overallLoss;

fprintf('Cond 2 vs Cond 3 Label (No negation vs negation), Active Avg\n')

numVoxels = 100;
create3Training3Testing_ActiveAvg_Cond
classifier = 'svmlinear';
run3Training3Testing
SVML_accuracies_Cond_activeAvg = all_accuracies;
SVML_accuracy_Cond_activeAvg = overallAccuracy;
SVML_losses_Cond_activeAvg = all_losses;
SVML_loss_Cond_activeAvg = overallLoss;
classifier = 'svmrbf';
run3Training3Testing
SVMR_accuracies_Cond_activeAvg = all_accuracies;
SVMR_accuracy_Cond_activeAvg = overallAccuracy;
SVMR_losses_Cond_activeAvg = all_losses;
SVMR_loss_Cond_activeAvg = overallLoss;

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