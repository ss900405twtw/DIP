function ans=rgbtogrey(filename)
    sample1=readrawRGB("sample1.raw"); 
    R=sample1(:,:,1);
    G=sample1(:,:,2);
    B=sample1(:,:,3);
    grey=0.2126*R+0.7152*G+0.0722*B;
    grey_t=grey.';
    writeraw(grey,"A.raw");
    writeraw(grey_t,"B.raw");
end