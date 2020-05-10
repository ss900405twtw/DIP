% DIP Homework Assignment #1
% 03 26, 2018
% Name: 吳睿哲
% ID #: r06921095
% email: r06921095@ntu.edu.tw
%只要執行每題提供的execute code 就可以輸出該題需要的檔案或答案
%###############################################################################%
%WARM-UP:	SIMPLE	MANIPULATIONS
%Implementation:1.RGB to grylevel 2. diagonal flipping(對矩陣作轉置)
%M-file name:rgbtogrey.m
%Usage:greylevel image to RGB image
%Output image:"A.raw","B.raw"
%Paramete:0.2126*R+0.7152*G+0.0722*B
%execute code:rgbtogrey("sample1.raw")
%###############################################################################%
% Problem 1(a): Noise intnsity decrease by 3
% Implementation 1: Linear Transformation
% M-file name: linear_amp.m
% Usage: linear_amp
% Output image: "D.raw"
% Parameters: decrease by 3
%execute code:linear_amp("sample2.raw",1/3)
%###############################################################################% 
% Problem 1(b): Plot the histagram of "sample2.raw" and "D.raw"
% Implementation 1: count the pixel and bar them
% M-file name: plot_hist.m
% Usage: linear_amp
% Output image: no
% Parameters: no
%execute code:plot_hist("sample2.raw")
%             plot_hist("D.raw")
%###############################################################################%
% Problem 1(c):Perform histagram equalization on "D.raw"
% Implementation 1: equalize the pixel that the pixel distribute uniformly
% M-file name: histogrameq.m
% Usage: hitogramequalization
% Output image: "H.raw"
% Parameters: no
%execute code:histogrameq("D.raw")
%###############################################################################%
% Problem 1(d):Perform local histogram equalization  on "D.raw"
% Implementation 1: local equalize the pixel that the pixel distribute uniformly
% M-file name: histogrameqal.m
% Usage: local hitogramequalization
% Output image: "L.raw"
% Parameters: 10*20 windows
%execute code:localhisteqal("D.raw")
%###############################################################################%
% Problem 1(e):point out the main difference of "H.raw" and "D.raw'
% Implementation 1: global equalization amd local equaliztion
% M-file name: histogrameqal.m
% Usage: local global hitogram equalization+local histogram eqealization
% Output image: no
% Parameters: 10*20 windows(local)
%execute code:no code(直接比較兩張圖及histogram的結果)
%###############################################################################%
% Problem 1(f):Perform log , inverse log, power-law transform to enhance
% "D.raw"
% Implementation 1: log , inverse log, power-law transform
% M-file name: logtrans.m,inverselog.m,powerlaw.m
% Usage: to enhance the image
% Output image: "log.raw","incerselog.raw","power.raw"
% Parameters: log(c=55),inverselog(c=7),powerlaw(c=-2)
%execute code:logtrans("D.raw")
%             inverselog("D.raw")
%             powerlaw("D.raw")
%###############################################################################%
% Problem 2(a):Generate Gaussian noise with two different parameters
% Implementation : Generate uniform noise
% M-file name: gengaus.m
% Usage: to enhance the image
% Output image: "G1.raw","G2.raw"
% Parameters: G1(5,7.5),G2(20,17.5)
%execute code:gengaus("sample3.raw")
%###############################################################################%
% Problem 2(b):adding salt and pepper noise with two different parameter
% Implementation : generate salt and pepper noise
% M-file name: pepper.m
% Usage: to generate impulse noise
% Output image: "S1.raw","S2.raw"
% Parameters: S1(0.01),S2(0.05)
%execute code:pepper("sample3.raw")
%###############################################################################%
% Problem 2(c):remove gaussian noise and salt and pepper noise
% Implementation : low pass filter and median pass filter
% M-file name: rmunifnoise.m,rmnoisemed.m
% Usage: to remove uniform noise and impulse noise
% Output image: "RG.raw","RS.raw"
% Parameters: S1(0.01),S2(0.05)
%execute code: rmunifnoise("G1.raw")
%              rmnoisemed("S1.raw")
%###############################################################################%
% Problem 2(d):compute the PSNR of RS and RG,and provide some discussion
% Implementation : MSE and PSNR
% M-file name: PSNR.m
% Usage: to compute the simularity of tow images
% Output image: no
% Parameters: no
%execute code: PSNR("sample3.raw","RG.RAW")
%              PSNR("sample3.raw","RS.RAW")
%###############################################################################%
% Problem 2-2:to remove the wrinkles of the face of a given image
% Implementation :median pass filter
% M-file name: rmwrinkles.m
% Usage: to remove the low and high frequency noise 
% Output image: wrinkle.raw
% Parameters: no
%execute code: rmwrinkles("sample4.raw")
