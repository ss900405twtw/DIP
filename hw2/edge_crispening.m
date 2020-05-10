function ans=edge_crispening(filename)
    par=50;
    filename=readraw(filename);
    mm=filename;
    original=filename;
    %Pretty Mask
    %k=1;
    %Sobel Mask
    k=2;
    
    matrix99=zeros(3,3,'double');
    matrix254=zeros(510,510,'double');
    for i=2:length(filename)-1
        for j=2:length(filename)-1
            
            %s=filename(i-1:i+1,j-1:j+1);
            %matrix99=s;
            %RG=filename(i,j)-filename(i+1,j+1);
            %RC=filename(i,j+1)-filename(i+1,j);
            GR=1/(k+2)*((filename(i,j+1)*k+filename(i-1,j+1)+filename(i+1,j+1))-(filename(i,j-1)*k+filename(i+1,j-1)+filename(i-1,j-1)));
            GC=1/(k+2)*((filename(i-1,j)*k+filename(i-1,j-1)+filename(i-1,j+1))-(filename(i+1,j)*k+filename(i+1,j-1)+filename(i+1,j+1)));
            
            mm(i,j)=round((GR^2+GC^2)^0.5);
            
            
                
            
            
        end
    end
    for i = 1:512*512
        if mm(i)>par
            mm(i)=255;
        else
            mm(i)=0;
        end                      
        
       
    end
    
    original2=original+filename/3;
    
    
    
    
    
    
    ans=original2;
    writeraw(original2,"edge_crispening.raw");
end