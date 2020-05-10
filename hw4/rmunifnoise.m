function ans=rmunifnoise(filename)
    filename=sample_readraw(filename);
    as=size(filename);
    mm=filename;
    filter=1/10*[1 1 1;1 2 1;1 1 1]
    matrix99=zeros(3,3,'double');
    matrix254=zeros(254,254,'double');
    for i=2:as(1)-1
        for j=2:as(2)-1
            
            s=filename(i-1:i+1,j-1:j+1);
            matrix99=s;
            mm(i,j)=sum(sum(filter.*s));
            
            
        end
    end
    ans=mm
end