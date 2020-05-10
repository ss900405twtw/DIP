function ans=rmwrinkles(filename)
   
filename=readraw(filename);
    par=0;
    mm=filename;
    
    matrix99=zeros(3,3,'double');
    matrix254=zeros(254,254,'double');
    for i=2:length(filename)-1
        for j=2:length(filename)-1
            
            s=filename(i-1:i+1,j-1:j+1);
            matrix99=s;
            %if abs(filename(i,j)-(sum(sum(s))-filename(i,j)))>par
                %mm(i,j)=(1/8)*(sum(sum(s))-filename(i,j));
            %end
            mm(i,j)=median(median(s));
            
        end
    end
    ans=mm;
    writeraw(mm,"wrinkle.raw");
end