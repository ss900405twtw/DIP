function ans=parsing_tra2(filename)
    s=train_readraw(filename);
    
    for i=1:448*240
        if s(i) <120
            s(i)=0;
        else 
            s(i)=255;
        end
    end
    
    index=1;
    for i=0:4
        for j=0:13
            
            if (j>3) && (i<2) && (j<6)
                ax=s(15+i*45:40+45*i,5+10+30*j:5+30+30*j);
            elseif (j>=3) && (i==4) &&(j<=6)
                ax=s(5+15+i*45:5+40+45*i,5+10+30*j:5+30+30*j);
            elseif(j>=6) && (i<2) && (j<=10)
                ax=s(15+i*45:40+45*i,10+10+30*j:10+30+30*j);
            elseif(j>10) && (i<2) && (j<=13)
                ax=s(15+i*45:40+45*i,15+10+30*j:15+30+30*j);
                
            elseif (j<=3) && (i==2) 
                ax=s(5+15+i*45:5+40+45*i,10+30*j:30+30*j);  
             elseif (j<=3) && (i>=3) 
                ax=s(5+15+i*45:5+40+45*i,10+30*j:30+30*j); 
            
            elseif (j>3) && (i>=2) && (j<6)
                ax=s(10+15+i*45:10+40+45*i,5+10+30*j:5+30+30*j);
            elseif(j>=6) && (i>=2) && (j<=10)
                ax=s(3+15+i*45:3+40+45*i,10+10+30*j:10+30+30*j);
            elseif(j>10) && (i>=2) && (j<=13)
                ax=s(4+15+i*45:4+40+45*i,15+10+30*j:15+30+30*j);
            
            
                
            else 
                ax=s(15+i*45:40+45*i,10+30*j:30+30*j);
            end
            tra_matrix(:,:,index)=ax;
            %tra_matrix(:,:,index)=s(1+i*48:48+48*i,1+32*j:32+32*j);
            index=index+1;
        end
    end
    
            
            
            
    
    
    
    
    %{
    index=1;
    for i = 0:4
        for j = 0:13
            ax=s(1+i*48:48+48*i,1+32*j:32+32*j);
            for mm=1:48*32
                if ax(mm)>120
                    ax(mm)=255;
                else
                    ax(mm)=0;
                end
            end
            tra_matrix(:,:,index)=ax;
            %tra_matrix(:,:,index)=s(1+i*48:48+48*i,1+32*j:32+32*j);
            index=index+1;
        end
    end
    %}

    ans=tra_matrix;
end


