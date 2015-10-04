for i=1:size(data.layer_1.data,1)
    A=reshape(Data.V(:,i),5,5);
    Data.layer_1.kernels{1,i}=1/(sum(sum(A.^2))).*A;
    Data.layer_1.n_kernel=i;
end

