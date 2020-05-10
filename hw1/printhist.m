%print 256*256 grey levelmatrix to a bar plot
function print=printhist(filename)
    sample2_eq=zeros(1,length(filename),1,'double')
    sample2_raw=zeros(1,length(filename),1,'double')
    for i=1:256
        sample2_eq(i)=nnz(filename==i);
    end

    bar(sample2_eq)
end