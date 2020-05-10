function ans=gengaus(filename)
filename=readraw(filename);
gausnoise=random('norm',5,7.5,256,256);
noiseimg=gausnoise+filename;
writeraw(noiseimg,"G1.raw");

gausnoise2=random('norm',20,17.5,256,256);
%sample3=readraw(filename);
noiseimg2=gausnoise2+filename;
writeraw(noiseimg2,"G2.raw");

end