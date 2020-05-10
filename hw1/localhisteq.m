function ans=localhisteq(filename)
    filename=readraw(filename)
    mm=filename;
    matrix99=zeros(3,3,'double');
    matrix254=zeros(254,254,'double');
    for i=2:length(filename)-1
        for j=2:length(filename)-1
            
            s=filename(i-1:i+1,j-1:j+1);
            matrix99=s;
            count=unique(matrix99);
            num_count=zeros(1,length(count),'double');
            for k=1:length(count)
                
                num_count(k)=nnz(matrix99==count(k));
            end
            for l=2:length(count)
                num_count(l)=num_count(l)+num_count(l-1);
            end
            for n=1:length(count)
                num_count(n)=(num_count(n)/9);
            end
            for o=1:length(count)
                num_count(o)=round((num_count(o)*256));
            end
            for m=1:length(count)
                if count(m)==matrix99(2,2)
                    a=num_count(m);
                
                mm(i,j)=a;
                end
                
            end
        end
        
    end
    ans=mm;
end