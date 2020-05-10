			
function ans=second_order(filename)
    rmunifnoise(filename);
    filename=readraw("RG.raw");
    mm=filename;
    %Pretty Mask
    %k=1;
    %Sobel Mask
    par=7;
    filter=1/8*[-1 -1 -1;-1 8 -1;-1 -1 -1]
    matrix99=zeros(3,3,'double');
    matrix254=zeros(510,510,'double');
    for i=2:length(filename)-1
        for j=2:length(filename)-1
            s=filename(i-1:i+1,j-1:j+1);
            matrix99=s;
            mm(i,j)=sum(sum(filter.*s));
           
            
            
                
            
            
        end
    end
    %{
    for i = 1:512*512
        mm(i)=mm(i)+100;
    end
    %}
    for i=1:512*512
        if abs(mm(i))>par
            mm(i)=filename(i);
        else
            mm(i)=0;
        end
    end
    ans=mm;
    writeraw(mm,"second_order.raw");
end