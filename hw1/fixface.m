function ans=fixface(filename)
    ac=filename(111:165,21:137);
    ac=rmnoisemed(ac);
    fileaname(111:165,21:137)=ac;
   %{ 
    for i=111:165
        for j=21:137
            filename(i,j)=filename(165+i-110,137+j-21);
        end
    end
    %}
    ans=filename;
end