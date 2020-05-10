function ans = law(filename)
    filename = readraw(filename);
    %figure, imshow(uint8(filename));
    mm=filename;
    law1 = 1/36*[1 2 1;2 4 2;1 2 1];
    law2 = 1/12*[1 0 -1;2 0 -2;1 0 -1];
    law3 = 1/12*[-1 2 -1;-2 4 -2;-1 2 -1];
    law4 = 1/12*[-1 -2 -1;0 0 0;1 2 1];
    law5= 1/4*[1 0 -1;0 0 0;-1 0 1];
    law6=1/4*[-1 2 -1;0 0 0;1 -2 1];
    law7=1/12*[-1 -2 -1;2 4 2;-1 -2 -1];
    law8=1/4*[-1 0 1;2 0 -2;-1 0 1];
    law9 = 1/4*[1 -2 1 ;-2 4 -2;1 -2 1];
    
    for i=2:length(filename)-1
        for j=2:length(filename)-1
            
            s=filename(i-1:i+1,j-1:j+1);
            
            mm(i,j)=sum(sum(law8.*s));
            
            
            
        end
    end
    
    mm7=mm;
    mmm=mm;
    %disp(mm);
    for i=7:length(mm7)-6
        for j=7:length(mm7)-6
            s=mm7(i-6:i+6,j-6:j+6);
            mmm(i,j)=sum(sum(s.*s));
            
        end
    end
    
    
    
    
    
    
    
    ans =mmm;
    ans=(ans - min(min(ans)))/(max(max(ans)) - min(min(ans))) * 255;
    g=ans;
    gg=ans
    ggg=ans;
    
    for i=7:length(mm7)-6
        for j=7:length(mm7)-6
            if sum(sum(g(i-6:i+6,j-6:j+6)>100)) > 130
                gg(i-6:i+6,j-6:j+6)=255;
            
            elseif sum(sum(g(i-6:i+6,j-6:j+6)<1))>90
                gg(i-6:i+6,j-6:j+6)=150;
            
            else
                gg(i-6:i+6,j-6:j+6)=0;
            end
        end
    end
  %{  
    for i=7:length(mm7)-6
        for j=7:length(mm7)-6
            if sum(sum(gg(i-6:i+6,j-6:j+6)>100)) > 50
                ggg(i-6:i+6,j-6:j+6)=255;
            
            elseif sum(sum(gg(i-6:i+6,j-6:j+6)<0.1))>50
                ggg(i-6:i+6,j-6:j+6)=150;
            
            else
                ggg(i-6:i+6,j-6:j+6)=0;
            end
        end
    end
  %}    
            
    
    
    
    
    
    
    
    
    
    
    %ans=filename;
    ans=gg;
    figure, imshow(uint8(ans));
    writeraw(ans,"classification.raw")
end