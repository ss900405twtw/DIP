function ans =skeletonizing(filename)

    

I=readraw(filename)
I = im2double(I);
I = im2bw(I);

H = size(I, 1); %height of image
W = size(I, 2); %width of image
for i = 2:H-1
      for j = 2:W-1
          Neighbour = [I(i-1,j) I(i-1,j+1) I(i,j+1) I(i+1,j+1) I(i+1,j) I(i+1,j-1) I(i,j-1) I(i-1,j-1)];
          Surrounds = [I(i-1,j) I(i-1,j+1) I(i,j+1) I(i+1,j+1) I(i+1,j) I(i+1,j-1) I(i,j-1) I(i-1,j-1) I(i-1,j)];
          Transition = nnz(diff(Surrounds)==1);
          Non_zero = sum(Neighbour(:)==1);
          if Transition==1 && (2<=Non_zero<=6) && (I(i-1,j)*I(i,j+1)*I(i+1,j)==0) && (I(i,j+1)*I(i+1,j)*I(i,j-1)==0)
              I(i,j)=0;
          end
      end
end

writeraw(I*255,"skeletonizing.raw");
ans =I*255;
imshow(uint8(readraw("skeletonizing.raw")))
end