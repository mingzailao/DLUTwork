
data.layer_1.S_B=zeros(25,25);
for i=1:10
    A=toeplitz_matrix_transform(data.layer_1.mu_{i}-data.layer_1.mu,zeros(5,5));
    data.layer_1.S_B=data.layer_1.S_B+data.layer_1.count{i}/6000*A'*A;
end
