%generate usable examples
for n=1:length(starplus_data)
    current_set = starplus_data(n);
    [i,d,m]=transformIDM_selectTrials( ...
        current_set.info, ...
        current_set.data, ...
        current_set.meta, find([current_set.info.cond]>1));
    [i,d,m]=transformIDM_avgROIVoxels(i,d,m,relevantROI);
    [currentEx,currentL,currentI] = idmToExamples_condLabel(i,d,m);
    starplus_examples(n).ex = currentEx;
    starplus_examples(n).l = currentL;
    starplus_examples(n).i = currentI;
end