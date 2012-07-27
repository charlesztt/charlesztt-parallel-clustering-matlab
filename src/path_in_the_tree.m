function A = path_in_the_tree( instance, T )
parent_T=T;
A=zeros(T.depth,1);
n=0;

while(1)
    n=n+1;
    dists=distance_calculation(parent_T.centers,instance);
    [~,idx]=min(dists,[],1);
    A(n)=idx;
    if isfield(parent_T,'sub')
        parent_T=parent_T.sub(idx);
    else
        break;
    end
end

end