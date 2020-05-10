function ans=parsing_sample1(filename)
    s=sample_readraw(filename);
    tra_matrix(:,:,1)=s(11:70,31:80);
    tra_matrix(:,:,2)=s(55:115,90:120);
    tra_matrix(:,:,3)=s(20:90,130:180);
    tra_matrix(:,:,4)=s(70:110,200:250);
    tra_matrix(:,:,5)=s(20:90,280:330);
    %tra_matrix(:,:,index)=s(1+i*48:48+48*i,1+32*j:32+32*j);
    ans=tra_matrix;
end
    
    