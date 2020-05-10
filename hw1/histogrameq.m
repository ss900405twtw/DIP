%do histogramequalization on a grey level 256*256 matrix
function afteq=histogrameq(filename)
    filename=readraw(filename)
    hist_count=zeros(1,256,1,'double');
    hist_count_plz=zeros(256,256,1,'double');
    for i=1:256
        hist_count(i)=nnz(filename==i);
    end
    
    for i=2:256
        hist_count(i)=hist_count(i-1)+hist_count(i);
    end
    
    for i=1:256
        hist_count(i)=round((hist_count(i)/(256*256))*255);
     
    end  
    
    for i=1:256
        for j=1:256
            if filename(i,j)>0
                s=filename(i,j);
                filename(i,j)=hist_count(s);
            end
        end
    end
   
    
           
    filename=cast(filename,'uint8')
    
    
    afteq=filename;
    writeraw(afteq,"H.raw");
        
end
