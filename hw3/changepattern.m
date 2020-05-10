p1=readraw("wall.raw");
p2=readraw("storm.raw");
p3=readraw("dot.raw");
gg=readraw("classification.raw");
mm=gg;
for i=7:length(gg)-6
        for j=7:length(gg)-6
            if sum(sum(gg(i-6:i+6,j-6:j+6)==150)) > 130
                mm(i-6:i+6,j-6:j+6)=p2(i-6:i+6,j-6:j+6);
            
            elseif sum(sum(gg(i-6:i+6,j-6:j+6)==255))>90
                mm(i-6:i+6,j-6:j+6)=p1(i-6:i+6,j-6:j+6);
            
            else
                mm(i-6:i+6,j-6:j+6)=p3(i-6:i+6,j-6:j+6);
            end
        end
end
    
writeraw(mm,"synthesize.raw")
imshow(uint8(readraw("synthesize.raw")))