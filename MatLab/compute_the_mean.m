
for i=1:10
    a=zeros(1,10);
    a(1,i)=1;
    a=a*double(train_y');
    
    sum=zeros(28,28);
    count=0;
    for j=1:60000
        if a(j)==1
            sum=sum+double(data.layer_1.data(:,:,j));
            count=count+1;
        end
    end
    data.layer_1.mu_{i}=sum./count;
    data.layer_1.count{i}=count;
end
sum=zeros(28,28);
for i=1:60000
    sum=sum+double(data.layer_1.data(:,:,i));
end
data.layer_1.mu=sum./60000;
