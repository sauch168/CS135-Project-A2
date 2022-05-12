# CS135-Project-A2
Everything in /fmri-project/ was sourced from CMU (Tom Mitchell and Wei Wang).

Current Source Link for fMRI code: http://www.cs.cmu.edu/afs/cs.cmu.edu/project/theo-81/www/fmri_core.zip
https://www.cs.cmu.edu/afs/cs.cmu.edu/project/theo-81/www/

All files in the root/highest directory of this repository were written by 
our team.
We used the code sourced from CMU to parse the data as it is not usable in its raw state.

# Naming scheme legends

- Set Legend:
    - ROIAvg means the training/testing sets will be the average voxel of each region of interest
    - Active means the training/testing sets will be the N most active voxels
    - ActiveAvg means the training/testing sets will be the average of the N most active voxels
- Label legend:
    - SPvsPS means the label will be subject viewed sentence after picture vs. subject viewed picture after sentence
    - SPvsPS_PS means the label will be subject viewed sentence after picture vs. subject viewed picture after sentence, but the testing set only includes the PS label
    - SPvsPS_SP means the label will be subject viewed sentence after picture vs. subject viewed picture after sentence, but the testing set only includes the SP label
    - PvsS means the label will be the subject is viewing a picture vs the subject is viewing a sentence
    - Cond means the label will be the condition 2 or 3; 2 means the subject is presented with a sentence without a negation, 3 means the subject is presented with a sentence with a negation
- IF USING "scriptRun":
    - SVML = svmlinear, SVMR = svmrbf
    - accuracy = average accuracy
    - accuracies = accuracy of each combination (20 if 3 training 3 testing, 6 if 5 training 1 testing)
    - loss = average hinge loss
    - losses = hinge loss of each combination (20 if 3 training 3 testing, 6 if 5 training 1 testing)
    - same label/set legends as above


# HOW TO RUN
To run all possible tests:
- Download the 6 datasets from here: https://www.cs.cmu.edu/afs/cs.cmu.edu/project/theo-81/www/
- Place the 6 .mat files in the root directory of this project.
- Open the folder in MATLAB
- run "scriptRun" in the console
- the workspace will contain relevant values according to the above key


To run individual tests:
- run clS (clears and runs initialSetup)
- type "classifier=(classifier_name)"
    - classifier_name can be 'svmlinear', 'svmrbf', 'nb'
- type "numVoxels=(number_of_voxels)"
    - number_of_voxels can be any whole number up to the max number of voxels (which may vary), we suggest using 50 for Active and 100 for ActiveAvg
- pick one of the files starting with 'createTrainingTesting...'
    
- There is a choice of either 3 training 3 testing (20 possible combinations) or 5 training 1 testing (6 possible combinations)

- next, if you chose either a file with "SPvsPS_SP" or "SPvsPS_PS", run "run3Training3TestingAltSet" (3 datasets used to train, 3 datasets used to test) or "run5Training1TestingAltSet" (5 datasets used to train, 1 dataset used to test)
- instead, if you chose a file with any other label, run "run3Training3Testing" (3 datasets used to train, 3 datasets used to test) or "run5Training1Testing" (5 datasets used to train, 1 dataset used to test)
- In the workspace, there will be 4 key values:
    - overallAccuracy (the average of all accuracies)
    - overallLoss (the average of all hinge losses)
    - all_accuracies (a list of all accuracies)
    - all_losses (a list of all losses)
