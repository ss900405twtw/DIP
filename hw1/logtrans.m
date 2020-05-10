function ans=logtrans(filename)
    filename=readraw(filename);
    c=55;
    for i=1:256
        for j=1:256
            m=double(filename(i,j));
            filename(i,j)=c*log10(1+m);
        end
    end
    filename=uint8(filename);
    writeraw(filename,"log.raw");
    %imshow(filename)
    ans=filename;
   
end