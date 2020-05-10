function ans=pepper(filename)
    filename=readraw(filename);
    randpep=rand(256);
    pep=filename;
    
%sample33=double(sample33);
    %par=0.5
    par=0.01;
    for i=1:256
        for j=1:256
            if randpep(i,j)<=par
                pep(i,j)=0;
            end
            if randpep(i,j)>(1-par)
                pep(i,j)=255;
            end
        end
    end
    writeraw(pep,"S1.raw")
    pep2=filename;
    
    par=0.05;
    for i=1:256
        for j=1:256
            if randpep(i,j)<=par
                pep2(i,j)=0;
            end
            if randpep(i,j)>(1-par)
                pep2(i,j)=255;
            end
        end
    end
    writeraw(pep2,"S2.raw")
    
    
end