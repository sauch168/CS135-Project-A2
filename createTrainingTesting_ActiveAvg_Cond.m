%generate usable examples
for n=1:length(starplus_data)
    current_set = starplus_data(n);
    [i,d,m]=transformIDM_selectTrials( ...
        current_set.info, ...
        current_set.data, ...
        current_set.meta, find([current_set.info.cond]>1));
    currentEx = [];
    currentL = [];
    currentI = [];
    [Ri,Rd,Rm]=transformIDM_selectROIVoxels(i,d,m,relevantROI);
    [Ri,Rd,Rm]=transformIDM_selectActiveVoxels(Ri,Rd,Rm,numVoxels);
    [Ri,Rd,Rm]=transformIDM_avgVoxels(Ri,Rd,Rm,{1:Rm.nvoxels});
    [Rex,Rl,Rinfo]=idmToExamples_condLabel(Ri,Rd,Rm);
    currentEx = [currentEx; Rex];
    currentL = [currentL; Rl];
    currentI = [currentI; Rinfo];
    %[i,d,m]=transformIDM_selectTrials( ...
        %current_set.info, ...
        %current_set.data, ...
        %current_set.meta, find([current_set.info.cond]==3));
    %[Ri,Rd,Rm]=transformIDM_selectROIVoxels(i,d,m,relevantROI);
    %[Ri,Rd,Rm]=transformIDM_selectActiveVoxels(Ri,Rd,Rm,numVoxels);
    %[Ri,Rd,Rm]=transformIDM_avgVoxels(Ri,Rd,Rm,{1:Rm.nvoxels});
    %[Rex,Rl,Rinfo]=idmToExamples_condLabel(Ri,Rd,Rm);
    currentEx = [currentEx; Rex];
    currentL = [currentL; Rl];
    currentI = [currentI; Rinfo];
    
    starplus_examples(n).ex = currentEx;
    starplus_examples(n).l = currentL;
    starplus_examples(n).i = currentI;
end