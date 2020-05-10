function ans=parsing_tra(filename)
    s=train_readraw(filename);
    %G=zeros(240,448);
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
    

    ans=tra_matrix;
end


