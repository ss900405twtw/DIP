function G=readraw(filename)
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
   G=zeros(450,248);
   G(1:Size)=pixel(1:Size);
   % size: 240,448
   % single size: s(1:48,1:32)
   G = G(2:449,5:244)
   G=permute(G, [2,1]);
   end
