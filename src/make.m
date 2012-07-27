pcode create_tree CUDA_enabled distance_calculation parfor_hi_k_means_clustering parfor_k_means_clustering path_in_the_tree
if exist('../bin','dir')==0
    mkdir ../bin;
end
movefile('*.p', '../bin/');