clc;
clear;
load mnist_uint8;

%%%%%%%%%%%%%%Transform the data to 28*28%%%%%%%%%%%%%%
data.layer_1.data=reshape(double(train_x')/256,28,28,60000);
compute_the_mean;
compute_the_S_B;





