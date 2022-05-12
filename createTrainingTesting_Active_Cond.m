%generate usable examples
for n=1:length(starplus_data)
    current_set = starplus_data(n);
    [i,d,m]=transformIDM_selectTrials( ...
        current_set.info, ...
        current_set.data, ...
        current_set.meta, find([current_set.info.cond]==2));
    currentEx = [];
    currentL = [];
    currentI = [];
    for z=1:length(relevantROI)
        [Ri,Rd,Rm]=transformIDM_selectROIVoxels(i,d,m,relevantROI(z));
        [Ri,Rd,Rm]=transformIDM_selectActiveVoxels(Ri,Rd,Rm,numVoxels);
        [Rex,Rl,Rinfo]=idmToExamples_condLabel(Ri,Rd,Rm);
        currentEx = [currentEx; Rex];
        currentL = [currentL; Rl];
        currentI = [currentI; Rinfo];
    end
    [i,d,m]=transformIDM_selectTrials( ...
        current_set.info, ...
        current_set.data, ...
        current_set.meta, find([current_set.info.cond]==3));
    for z=1:length(relevantROI)
        [Ri,Rd,Rm]=transformIDM_selectROIVoxels(i,d,m,relevantROI(z));
        [Ri,Rd,Rm]=transformIDM_selectActiveVoxels(Ri,Rd,Rm,numVoxels);
        [Rex,Rl,Rinfo]=idmToExamples_condLabel(Ri,Rd,Rm);
        currentEx = [currentEx; Rex];
        currentL = [currentL; Rl];
        currentI = [currentI; Rinfo];
    end
    
    starplus_examples(n).ex = currentEx;
    starplus_examples(n).l = currentL;
    starplus_examples(n).i = currentI;
end