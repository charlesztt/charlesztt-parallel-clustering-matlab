function [T,A] = parfor_hi_k_means_clustering( data_x, cluster_k, depth )
data_x=double(data_x);
T=create_tree(data_x,cluster_k,depth);
T.depth=depth;
T.cluster_k=cluster_k;

[~,data_width]=size(data_x);
A=zeros(depth,data_width);

parfor n=1:data_width
    A(:,n)=path_in_the_tree(data_x(:,n),T);
end

end