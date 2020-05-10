function ans=plot_hist(filename)
sample2_hist=zeros(1,256,1,'double');
sample2=readraw(filename);
%sample2_3_hist=zeros(1,256,1,'double')
for i=1:256
    sample2_hist(i)=nnz(sample2==i);
end
%{
for i=1:256
    sample2_3_hist(i)=nnz(sample2_3==i);
end
%}
bar(sample2_hist);
end
%bar(sample2_3_hist)