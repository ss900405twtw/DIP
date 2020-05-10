% DIP Homework Assignment #3
% 05 02 , 2018
% Name: 吳睿哲
% ID #: r06921095
% email: r06921095@ntu.edu.tw
%只要執行每題提供的execute code 就可以輸出該題需要的檔案或答案
%###############################################################################%
% Problem 1(a): extract the object's boundary
% Implementation 1: erosion
% M-file name: readraw.m , writeraw.m , erosion.m
% Usage: boundary extraction
% Output image: erosion_boundary.raw
% Parameters:structuring element object= logical([0 1 0 ; 1 1 1 ; 0 1 0]);
%execute code:  erosion("sample1.raw")
%###############################################################################% 
% Problem 1(b): design an algorithm to count the object in the image
% Implementation : dilation
% M-file name: readraw.m , writeraw.m , dilation.m ,countobj.m
% Usage: count object
% Output the number of connected component
% Parameters: structuring element object=strel('square',3);
%execute code:countobj("sample1.raw")
%###############################################################################%
% Problem 1(b): design an algorithm to count the object in the image
% Implementation : dilation
% M-file name: readraw.m , writeraw.m , dilation.m ,countobj.m
% Usage: count object
% Output the number of connected component
% Parameters: structuring element object=strel('square',3);
%execute code:countobj("sample1.raw")
%###############################################################################%
% Problem 1(c):find the skeleton of the image
% Implementation :skeletonziation
% M-file name: readraw.m , writeraw.m , skeletonizing
% Usage: find the skeleton of the image
% Output image: skeletonizing.raw
% Parameters: no
%execute code:skeletonizing("sample1.raw")
%###############################################################################%
% Problem 2(a):perform law's method to classify the texture
% Implementation :use law's method and energy computation to classify the image
% M-file name: readraw.m , writeraw.m , law.m
% Usage: :classifit the different texture
% Output image: "classification.raw"
% Parameters:  8th filter in the law's method
%execute code:law("sample2.raw")
%###############################################################################%
% Problem 2(b):exchange the type of different pattern
% Implementation :use synthetic method to generrate the texture
% M-file name: synthesize.m , getxcorr2.m , xcorr2.m , example.m example2.m
% , example3.m changepattern.m peform2b.m
% Usage: :generate the input texture into a biger size
% Output image: "synthesize.raw"
% Parameters: no
%execute code:perform2b