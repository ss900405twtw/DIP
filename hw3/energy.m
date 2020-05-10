function ans=energy(filename)
    filename=normalize(filename);
    mm=filename;
    %disp(mm);
    for i=7:length(filename)-6
        for j=7:length(filename)-6
            s=filename(i-6:i+6,j-6:j+6);
            mm(i,j)=sum(sum(s.*s))/9;
            
        end
    end
    ans=mm;
end
            