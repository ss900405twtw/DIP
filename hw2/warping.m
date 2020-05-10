function ans=warping(filename)
    filename=readraw(filename);
    mm=filename;
    len=length(filename);
   
    for i=2:length(filename)-2
        for j=2:length(filename)-2
            
           
           
            distorted_j = mod((j + round(20*sin(i/40)) + length(mm)) , length(mm));
            distorted_i = mod((i + round(20*sin(j/30)) + length(mm)) , length(mm));
%              disp(distorted_j)
%             distorted_i=round(i+max(1,sind(60*i/len)));
%             distorted_j=round(j+max(1,sind(60*j/len)));
            
            
            
           mm(i,j) = filename(distorted_i+1,distorted_j+1);
            
            
        end
    end
%     D = padarray(mm,[512],'both');
    writeraw(mm,"warping.raw")
%     ans=mm
end