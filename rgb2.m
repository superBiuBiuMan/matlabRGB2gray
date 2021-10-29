%https://www.cnblogs.com/finlay/p/3665302.html
%平均值法
clear,clc,close all;
origin=imread('aaa.png');
subplot(1,2,1),imshow(origin),title("原图像");
r=origin(:,:,1);
g=origin(:,:,2);
b=origin(:,:,3);
[rows,cols,~]=size(origin);
for i=1:rows
   for j=1:cols
       sum=0;
       for k=1:3
         % sum=sum+origin(i,j,k);
          sum=sum+origin(i,j,k)/3;
       end
       %注意，是RGB分别/，而不是总和除3！
       %sum=sum/3;
      %第一次循环：（6+250+7+241+252+23+247+250+237）/3
      %第二次循环：（6+250+7+241+252+23+247+250+237）/3
      %第三次循环：（6+250+7+241+252+23+247+250+237）/3
      %最后/3
      %（6+250+7)/3+（241+252+23）/3+（247+250+237）/3
      %（6+250+7)/3+（241+252+23）/3+（247+250+237）/3
      %（6+250+7)/3+（241+252+23）/3+（247+250+237）/3
       afterOrigin(i,j)=sum;
   end
end
subplot(1,2,2);
imshow(afterOrigin);
title("平均值法");