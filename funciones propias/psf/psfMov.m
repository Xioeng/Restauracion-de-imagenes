function [P,c] = psfMov(dim,a)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
A=zeros(dim);
c=floor(dim/2)+1;
for j=0:c-1
A(c+j,c+j)=1;
end
A=imrotate(A,a+45,'crop');
P=A/sum(A(:));
clearvars A
c=[c,c];
end
