function ans=PSNR(filename1,filename2)
    filename1=readraw(filename1);
    filename2=readraw(filename2);
    MSE=0.0;
    for i=1:256
        for j=1:256
            MSE=MSE+((filename1(i,j)-filename2(i,j))^2);
        end
    end
    MSE=MSE*(1/(256*256));
    value=10*log10((255^2)/MSE);
    ans=value;
end
    