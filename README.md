# CS135-Project-A2
CS135 Final Project (fMRI)


# Acknowledgements
Everything in /fmri-project/ was sourced from CMU (Tom Mitchell and Wei Wang).

Current Source Link for fMRI code:
http://www.cs.cmu.edu/afs/cs.cmu.edu/project/theo-81/www/fmri_core.zip
https://www.cs.cmu.edu/afs/cs.cmu.edu/project/theo-81/www/

We used the code sourced from CMU to parse the data as it is not usable in its raw state. This would include functions to pull from each ROI in a dataset, pull the most active voxels in a dataset, pull specific averages in a dataset, and convert the dataset into a trainable/testable examples (a matrix).
Essentially, from this link, we were able to access a library of functions which could fetch data based on aspects such as region or activity.


# Team
Our Team: Samuel Chan, Farshad Darvish, Henry Zou

All files in the root/highest directory of this repository were written by 
our team.

The classifiers used were all found in the MATLAB library (fitcecoc, templateSVM, fitcnb)

# Naming scheme legends

- Set Legend:
    - ROIAvg means the training/testing sets will be the average voxel of each region of interest
    - Active means the training/testing sets will be the N most active voxels
    - ActiveAvg means the training/testing sets will be the average of the N most active voxels
- Label legend:
    - SPvsPS means the label will be subject viewed sentence after picture vs. subject viewed picture after sentence
    - SPvsPS_SP (corresponds to SPvsPS_ONE with SPorPS=1) means the label will be subject viewed sentence after picture vs. subject viewed picture after sentence, but the testing set only includes the SP label (sentence after picture)
    - SPvsPS_PS (corresponds to SPvsPS_ONE with SPorPS=2) means the label will be subject viewed sentence after picture vs. subject viewed picture after sentence, but the testing set only includes the PS label (picture after sentence)
    - PvsS means the label will be the subject is viewing a picture vs the subject is viewing a sentence
    - Cond means the label will be the condition 2 or 3; 2 means the subject is presented with a sentence without a negation, 3 means the subject is presented with a sentence with a negation
- IF USING "scriptRun", the workspace will the desired results with variable names corresponding to the below:
    - SVML = svmlinear, SVMR = svmrbf
    - NB = naive bayes
    - KNN5 = KNN with 5 neighbors, KNN7 is 7 neighbors, KNN9 is 9 neighbors
    - accuracy = average accuracy
    - accuracies = accuracy of each combination (20 if 3 training 3 testing because 6 choose 3, 6 if 5 training 1 testing because 6 choose 1)
    - loss = average hinge loss
    - losses = hinge loss of each combination (20 if 3 training 3 testing because 6 choose 3, 6 if 5 training 1 testing because 6 choose 1)
    - same label/set legends as above
- Misc files:
    - clS
        - clears workspace and console, then runs initialSetup
    - initialSetup
        - loads in all relevant data and variables
    - CS_135_NeurIPS_2022.pdf
        - the report for this project
    - files beginning with runAll
        - runs either 3 training 3 testing or 5 training 1 testing for the relevant label according to the above legend


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
    - classifier_name can be 'svmlinear', 'svmrbf', 'nb' ,'5nn', '7nn', '9nn'
- type "numVoxels=(number_of_voxels)"
    - number_of_voxels can be any whole number up to the max number of voxels (which may vary), we suggest using 50 for Active and 100 for ActiveAvg
- pick one of the files starting with 'createTrainingTesting...'
- Important Note: For files ending with "SPvsPS_ONE", you must set SPorPS=1 or 2
    - if it is set to 1, this means that the labels will be SP vs PS, but the testing set will only include SP (SPvsPS_SP)
    - if it is set to 2, this means that the labels will be SP vs PS, but the testing set will only include PS (SPvsPS_PS)
    - see Label Legend above for more details
    - this is not necessary for an individual test of any file not ending with "SPvsPS_ONE"
    
- There is a choice of either 3 training 3 testing (20 possible combinations) or 5 training 1 testing (6 possible combinations)

- next, if you chose to use a file ending with "SPvsPS_ONE" (which is the case for SPvsPS_SP and SPvsPS_PS, but not SPvsPS), run "run3Training3TestingAltSet" (3 datasets used to train, 3 datasets used to test) or "run5Training1TestingAltSet" (5 datasets used to train, 1 dataset used to test)
- instead, if you chose a file with any other label, run "run3Training3Testing" (3 datasets used to train, 3 datasets used to test) or "run5Training1Testing" (5 datasets used to train, 1 dataset used to test)
- In the workspace, there will be 4 key values for each of the label/classifier combos you have chosen:
    - overallAccuracy (the average of all accuracies)
    - overallLoss (the average of all hinge losses)
    - all_accuracies (a list of all accuracies)
    - all_losses (a list of all losses)
