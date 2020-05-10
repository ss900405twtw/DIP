filename=uint8(readraw("sample2.raw"));
filename=filename(363:512,363:512);

texture = filename;


figure;

imshow(texture);

figure;

outsize = size(texture)*(512/150);
tilesize = 12;
overlapsize = 3;
isdebug = 0;

t2 = synthesize(texture,   outsize , tilesize, overlapsize,isdebug);

imshow(uint8(t2))
writeraw(t2,"dot.raw");