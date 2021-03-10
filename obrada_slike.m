tic
n=1
for k=11:11
    name = strcat(int2str(k),'.mat');
    load(name);
    img2 = imadjust(cjdata.image);
    m = cjdata.tumorMask;
         
    slika1 = medfilt2(img2);
    ivice = img2 - slika1;  
    
    slika2 = ivice + img2;

    T = adaptthresh(img2);
    slika3 = slika2 > T;
    
    SE = strel('disk', 10);
    slika4 = imdilate(slika3 ,SE);
    %imshow(slika4);

    SE = strel('disk', 18);
    slika5 = imerode(slika4, SE);
    imshow(slika5);
  
    slika6 = img2 + int16(slika5*255);
    %imshow(slika6);
    
  
    slika7 = edge(slika5,'sobel');
    %imshow(slika7);
    
    
    slika8 = imfill(slika7,'holes');
    
    %imshow(slika8);
    
    
    br1 = nnz(slika8);
    br = round(br1*0.25);
    slika9 = bwareaopen(slika8, br);

    
    slika10=m-slika9;
   % imshow(slika10);
    
    %if( k==11)
     %   figure(n); imshow(img2);
      %  n=n+1;
       % figure(n); imshow(ivice);
     %   n=n+1;
     %   figure(n); imshow(slika2);
      %  n=n+1;
       % figure(n); imshow(slika3);
     %   n=n+1;
      %  figure(n); imshow(slika6);
       % n=n+1;
    %    figure(n); imshow(slika7);
     %   n=n+1;
      %  figure(n); imshow(slika9);
       % n=n+1;
       % figure(n); imshow(slika10);
      %  n=n+1;
   % end
    Tp=0;
    Tn=0;
    Fp=0;
    Fn=0;
    for i=1:512
        for j=1:512
        if((m(i,j)==slika9(i,j))&&(m(i,j)==1))
            Tp=Tp+1;
        end
        if((m(i,j)==slika9(i,j))&&(m(i,j)==0))
            Tn=Tn+1;
        end
       if((slika9(i,j)==0)&&(m(i,j)==1))
           Fp=Fp+1;
       end
     if((slika9(i,j)==1)&&(m(i,j)==0))
           Fn=Fn+1;
     end       
        end
    end
    tacnost(k)=(Tp+Tn)*100/(Tp+Tn+Fp+Fn);
    preciznost(k)=Tp*100/(Tp+Fp);
    if(Tp+Fn == 0) odziv(k) = 0; end;
    if(Tp+Fn == 0) odziv(k)=Tp*100/(Tp+Fn); end;
    
end

mean(tacnost) 
mean(preciznost) 
mean(odziv)

toc
