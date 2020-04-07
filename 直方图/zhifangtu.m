%���ص�һ��ͼ�������д���
srcImage=imread('money_noise.png');

%ת���ɻҶ�ͼ
grayImage=rgb2gray(srcImage);
imwrite(grayImage,'lena_gray.jpg');%����
%��ȡͼƬ��Ϣ����Height��Width��Format��ColorType����Ϣ�������ô˺����жϺ���Ϊ��ͼ���ǻҶ�ͼ
info=imfinfo('lena_gray.jpg');
%[M,N]=size(grayImage);

%�ڴ�������ʾ2*2����ͼ��
subplot(2,3,1);
imshow(grayImage);
title('ԭͼ��Ҷ�ͼ');

%���ƻҶ�ֱ��ͼ
subplot(2,3,2);
imhist(grayImage);
title('�Ҷ�ֱ��ͼ');
%[M,N]=size(hist);

%�ԻҶ�ֱ��ͼ���⻯����
subplot(2,3,3);
H1=adapthisteq(grayImage);
imhist(H1);
title('ֱ��ͼ���⻯');

%����ͼ��Ҷȵȼ�
%ԭͼ��Ҷȼ���10~120��������100~200
dstImage=imadjust(grayImage,[0.039,0.470],[0.392,0.784],0.6);
subplot(2,3,4);
imshow(dstImage);%��ʽ������ͼ��
title('�Ҷȼ�������');
subplot(2,3,5);
imhist(dstImage);
title('�Ҷȵ�����ֱ��ͼ');
