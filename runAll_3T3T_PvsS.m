%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% P vs S label (subject is viewing a picture or a sentence at any given time)

%%%%% SVM linear kernel and rbf kernel
fprintf('P vs S label, Active\n')
numVoxels = 50;
classifier='svmlinear';
create3Training3Testing_Active_PvsS;
run3Training3Testing;
SVML_accuracies_PvsS_active = all_accuracies;
SVML_accuracy_PvsS_active = overallAccuracy;
SVML_losses_PvsS_active = all_losses;
SVML_loss_PvsS_active = overallLoss;
classifier = 'svmrbf';
run3Training3Testing;
SVMR_accuracies_PvsS_active = all_accuracies;
SVMR_accuracy_PvsS_active = overallAccuracy;
SVMR_losses_PvsS_active = all_losses;
SVMR_loss_PvsS_active = overallLoss;

fprintf('P vs S label, ROI Avg')
classifier = 'svmlinear';
run3Training3Testing;
SVML_accuracies_PvsS_ROIAvg = all_accuracies;
SVML_accuracy_PvsS_ROIAvg = overallAccuracy;
SVML_losses_PvsS_ROIAvg = all_losses;
SVML_loss_PvsS_ROIAvg = overallLoss;
classifier = 'svmrbf';
run3Training3Testing;
SVMR_accuracies_PvsS_ROIAvg = all_accuracies;
SVMR_accuracy_PvsS_ROIAvg = overallAccuracy;
SVMR_losses_PvsS_ROIAvg = all_losses;
SVMR_loss_PvsS_ROIAvg = overallLoss;

fprintf('P vs S label, Active Avg')
numVoxels = 100;
create3Training3Testing_ActiveAvg_PvsS;
classifier = 'svmlinear';
run3Training3Testing;
SVML_accuracies_PvsS_activeAvg = all_accuracies;
SVML_accuracy_PvsS_activeAvg = overallAccuracy;
SVML_losses_PvsS_activeAvg = all_losses;
SVML_loss_PvsS_activeAvg = overallLoss;
classifier = 'svmrbf';
run3Training3Testing;
SVMR_accuracies_PvsS_activeAvg = all_accuracies;
SVMR_accuracy_PvsS_activeAvg = overallAccuracy;
SVMR_losses_PvsS_activeAvg = all_losses;
SVMR_loss_PvsS_activeAvg = overallLoss;

%%%%% Naive Bayes
fprintf('--------Naive Bayes----------')
fprintf('P vs S label, Active\n')
numVoxels = 50;
classifier = 'nb';
create3Training3Testing_Active_PvsS;
run3Training3Testing;
NB_accuracies_PvsS_active = all_accuracies;
NB_accuracy_PvsS_active = overallAccuracy;
NB_losses_PvsS_active = all_losses;
NB_loss_PvsS_active = overallLoss;

fprintf('P vs S label, ROI Avg')
create3Training3Testing_ROIAvg_PvsS;
run3Training3Testing;
NB_accuracies_PvsS_ROIAvg = all_accuracies;
NB_accuracy_PvsS_ROIAvg = overallAccuracy;
NB_losses_PvsS_ROIAvg = all_losses;
NB_loss_PvsS_ROIAvg = overallLoss;

fprintf('P vs S label, Active Avg')
numVoxels = 100;
create3Training3Testing_ActiveAvg_PvsS;
run3Training3Testing;
NB_accuracies_PvsS_activeAvg = all_accuracies;
NB_accuracy_PvsS_activeAvg = overallAccuracy;
NB_losses_PvsS_activeAvg = all_losses;
NB_loss_PvsS_activeAvg = overallLoss;
