function ans=predict(sample1,sample2,Training)
    tra_array=['A','B','C','D','E','F','G','H','I','J','K','L','M','N'
           'O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b'
           'c','d','e','f','g','h','i','j','k','l','m','n','o','p'
           'q','r','s','t','u','v','w','x','y','z','0','1','2','3'
           '4','5','6','7','8','9','!','@','#','$','%','^','&','*'];

    %parsing sample1
    sd=sample_readraw(sample1);
    num_H=sd(11:70,31:80);
    num_i=sd(46:125,91:120);
    num_g=sd(21:90,131:180);
    num_x=sd(71:110,201:250);
    num_8=sd(21:90,281:330);
    
    %parsing sample2
    ss=sample_readraw(sample2);
    num_S=ss(41:110,41:90);
    num_B=ss(11:50,91:120);
    num_4=ss(71:115,121:150);
    num_T=ss(26:95,161:225);
    num_7=ss(76:115,296:330);
    num_I=ss(6:75,326:355);
    
    %parsing Traing
    s=parsing_tra(Training);
    
    %predicting
    arr=num_I;
    arr_size=size(arr);
    arr_x=arr_size(1);
    arr_y=arr_size(2);
    
    X = zeros(1,70);
    for i=1:70
        change_arr=imresize(s(:,:,i),[arr_x,arr_y]);
        a=arr-change_arr;
        a=a.^2;
        a=sum(a(:));
        %a=psnr(change_arr,arr)
        X(i)=a;
        
        
    end
   [val, idx] = min(X);

ans=tra_array(idx);

end
        
    
    
    

    