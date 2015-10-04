function Toeplitz=toeplitz_matrix_transform(A,C)
    
    [m,n]=size(A);
    [s,t]=size(C);
    Toeplitz=zeros((n+t-1)*(m+s-1),s*t);
    for j=1:n
        for i=1:t
            Toeplitz(1+(i+j-2)*(m+s-1):(i+j-1)*(m+s-1),1+(i-1)*s:i*s)=toeplitz([A(:,j)',zeros(1,s-1)],[A(1,j),zeros(1,s-1)]);
        end
    end