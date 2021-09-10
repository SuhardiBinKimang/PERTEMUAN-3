clc;
clear;

%gammbar
picture = imread ('IMG_9157.JPG');
figure(1); imshow(picture)

%merubah gambar jadi keabuan
picture_gray = (0.5*picture(:,:,1) + 0.120*picture(:,:,2) + 0.115*picture (:,:,3));
figure(2); imshow (picture_gray)

%merubah gambar ke citra biner
picture_biner = im2bw(picture_gray,0.5);
figure(3); imshow(picture_biner)

%merubah brightness gambar
picture_brightness = picture_gray + 30;
figure (4); imshow (picture_brightness)

%merubah contras gambar
picture_contras = picture_gray * 0.5;
figure (5); imshow (picture_contras)