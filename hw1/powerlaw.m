function ans=powerlaw(filename)
    filename=readraw(filename);
    c=-2;
   
    for p = 1 : 256
        for q = 1 : 256
            filename(p, q) = (filename(p, q)/256)^c;  
        end
    end
    filename=uint8(filename);
    %imshow(filename)
    ans=filename;
    writeraw(ans,"power.raw");
end