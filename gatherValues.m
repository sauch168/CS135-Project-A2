
function [accs,acc,losses,loss] = gatherValues()
    run3Training3Testing
    accs = all_accuracies;
    acc = overallAccuracy;
    losses = all_losses;
    loss = overallLoss;
end