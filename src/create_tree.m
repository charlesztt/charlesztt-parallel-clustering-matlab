function T = create_tree(data_x, cluster_k, depth)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[~, data_width]=size(data_x);
if data_width<=cluster_k;
    cluster_k=data_width;
end
if depth~=1
    [labels centroids]=parfor_k_means_clustering(data_x, cluster_k);
    T.centers=centroids;
    for n=1:cluster_k
        T.sub(n)=create_tree(data_x(:,labels==n), cluster_k, depth-1);
    end
else
    [labels centroids]=parfor_k_means_clustering(data_x, cluster_k);
    T.centers=centroids;
end
end