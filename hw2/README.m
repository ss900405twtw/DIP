% DIP Homework Assignment #2
% 04 10, 2018
% Name: 吳睿哲
% ID #: r06921095
% email: r06921095@ntu.edu.tw
%只要執行每題提供的execute code 就可以輸出該題需要的檔案或答案
%###############################################################################%
% Problem 1(a): first order、second order、canny edge detection
% Implementation 1: Orthogonal gradient generation
% M-file name: first_order.m , second_order.m , canny.m , rmunifnoise.m
% Usage: edge detection
% Output image: first_order.raw , secoond_order.raw , canny.raw
% Parameters: first_order thershold:50 , secon_order thershold:7 , canny
% thershold :20 , k=2
%execute code:  first_order("sample1.raw")
%               second_order("sample1.raw")
%               canny("sample1.raw")
%###############################################################################% 
% Problem 1(b): edge detection for noising image 
% Implementation : detecting the edge when image has noising signal
% M-file name: first_order.raw
% Usage: edge detection
% Output first_order.raw
% Parameters: first_order thershold:50
%execute code:first_order("sample2.raw")
%###############################################################################%
% Problem 2(a):edge crispening
% Implementation :make the original image more apparently
% M-file name: edge_crispening.m
% Usage: edge crispening
% Output image: edge_crispening.raw
% Parameters: thershold 50
%execute code:edge_crispening("sample3.raw")
%###############################################################################%
% Problem 2(b):wraping a image
% Implementation : performin wraping as a geometrical modification
% M-file name: warping.m
% Usage: :wraping
% Output image: "wraping.raw"
% Parameters:  no
%execute code:warping("edge_crispening.raw")
