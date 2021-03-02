tic
save('C:\Users\Miško\Desktop\baza\naseresenje\nasaresenja.mat'); 
p = 1;
X = zeros(8,8,256*3049);
for k=1:3049
    name = strcat(int2str(k),'.mat');
    load(name);
    grayscale = imadjust(cjdata.image);
   
  
    filtrirana_slika = medfilt2(grayscale);
 
    ivice_mozga = grayscale - filtrirana_slika;
    
    kvalitetna_slika = ivice_mozga + grayscale;
    
    treshold = adaptthresh(grayscale);
    binarizovana_slika = kvalitetna_slika > treshold;
   
    
    downsample = binarizovana_slika(1:4:end,1:4:end);
   
    for i=1:8:112
        for j=1:8:112
            cropimg=imcrop(downsample, [j i 7 7]);
            crop3d=zeros(8, 8, 1);
            crop3d(:,:,1)=cropimg;
            X(1:8, 1:8, p) = crop3d;
            p = p+1; 
            imshow(cropimg);
        end
    end
end
%save(strcat('C:\Users\Miško\Desktop\baza\naseresenje\nasaresenja.mat'), 'X');
toc