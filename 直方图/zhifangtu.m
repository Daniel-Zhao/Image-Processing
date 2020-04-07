%加载第一幅图像对其进行处理
srcImage=imread('money_noise.png');

%转化成灰度图
grayImage=rgb2gray(srcImage);
imwrite(grayImage,'lena_gray.jpg');%保存
%读取图片信息包括Height、Width、Format、ColorType等信息，可利用此函数判断函数为彩图还是灰度图
info=imfinfo('lena_gray.jpg');
%[M,N]=size(grayImage);

%在窗口中显示2*2排列图像
subplot(2,3,1);
imshow(grayImage);
title('原图像灰度图');

%绘制灰度直方图
subplot(2,3,2);
imhist(grayImage);
title('灰度直方图');
%[M,N]=size(hist);

%对灰度直方图均衡化处理
subplot(2,3,3);
H1=adapthisteq(grayImage);
imhist(H1);
title('直方图均衡化');

%调整图像灰度等级
%原图像灰度集中10~120，调整到100~200
dstImage=imadjust(grayImage,[0.039,0.470],[0.392,0.784],0.6);
subplot(2,3,4);
imshow(dstImage);%显式调整后图像
title('灰度级调整后');
subplot(2,3,5);
imhist(dstImage);
title('灰度调整后直方图');
