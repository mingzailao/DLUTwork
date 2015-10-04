data.layer_1.S_W=zeros(25,25);
for i=1:10
    a=zeros(1,10);
    a(1,i)=1;
    a=a*double(train_y');
    sum=zeros(25,25);
    for j=1:60000
        if a(j)==1
            sum=sum+(toeplitz_matrix_transform((data.layer_1.data(:,:,j)-data.layer_1.mu_{i}),zeros(5,5)))'*(toeplitz_matrix_transform((data.layer_1.data(:,:,j)-data.layer_1.mu_{i}),zeros(5,5)));            
        end
    end
    fprintf('the sum is %s\n',sum);
    
    data.layer_1.S_W=data.layer_1.S_W+sum;
end

            
            
            
            