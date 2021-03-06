function G=sample_readraw(filename)
%readraw - read RAW format grey scale image file from Disk
%	Usuage  : G=readraw(filename)

	disp(['	Retrieving Image ' filename ' ...']);
	fid=fopen(filename,'rb');
	if (fid==-1)
	  	error('can not open imput image filem press CTRL-C to exit \n');
	  	pause
	end
	pixel=fread(fid,inf, 'uchar');
	fclose(fid);
   [Y X]=size(pixel);
   Size=(Y*X);
   %N=sqrt(Size);
   G=zeros(390,125);
   G(1:Size)=pixel(1:Size);
   for i=1:390*125
       if G(i)<80
           G(i)=0;
       else
           G(i)=255;
       end
   end
   %G = G(5:244,2:449)
   G=permute(G, [2,1]);
   end
