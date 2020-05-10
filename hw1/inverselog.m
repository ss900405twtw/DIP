function ans=inverslog(filename)
    filename=readraw(filename);
    c=7;
    for i=1:256
        for j=1:256
            m=double(filename(i,j));
            filename(i,j)=(exp(m) ^ (1/c))-1;
        end
    end
    %filename=uint8(filename);
    %imshow(filename)
    writeraw(filename,"inverselog.raw");
    ans=filename;
end