%N=10;
%c=[];
%for j=1:N/2+1
%for i=1:N/2+1
 %   nodenumber=(j-1)*(N+1)+i
 %   [orbit]=p2(nodenumber)
 %   [c1,c2]=p3(orbit)
 %   c=[c c1 c2];
%end
%end
    
function Rmat=p1_d2(N)
%N=10;
Rmat=[];
for i=1:N/2
    numberofMorbits=1;
    xco1=N/2+1; yco1=i;
    xco2=N+2-i; yco2=N/2+1;
    xco3=xco1;  yco3=N+2-i;
    xco4=i; yco4=N/2+1;
    xco=[xco3 xco1 ];
    yco=[yco3 yco1 ];
    
   nodenumber=[];
     for i1=1:2
          nodenumber=[nodenumber (yco(i1)-1)*(N+1)+xco(i1)];
     end
     nodenumber
     c=columnM_d2(nodenumber,N);
     Rmat=[Rmat c];   
    
    xco=[xco2 xco4 ];
    yco=[yco2 yco4 ];
    
    nodenumber=[];
     for i1=1:2
          nodenumber=[nodenumber (yco(i1)-1)*(N+1)+xco(i1)];
     end
     nodenumber
     c=columnV_d2(nodenumber,N);
  Rmat=[Rmat c];   
   
   
   for j=i:N/2
    
      xco1=j; yco1=i; 
      xco2=N+2-j; yco2=yco1;
      xco3=xco2; yco3=N+2-i;
      xco4=xco1; yco4=yco3;
      xco=[xco3 xco4 xco1 xco2];
      yco=[yco3 yco4 yco1 yco2];
   
   
           nodenumber=[];
 for i1=1:4
          nodenumber=[nodenumber (yco(i1)-1)*(N+1)+xco(i1)];
 end
 nodenumber
 c=column2_d2(nodenumber,N);
 Rmat=[Rmat c];
     
 
   end
    
    if (i+1)==N/2+1 break
     else
    end
 
   for j=i+1:N/2
   
      xco1=N+2-i; yco1=j; 
      xco2=xco1; yco2=N+2-j;
      xco3=i; yco3=yco2;
      xco4=xco3; yco4=yco1;
       
       
      xco=[xco2 xco3 xco4 xco1];
      yco=[yco2 yco3 yco4 yco1];      
       
                  nodenumber=[];
 for i1=1:4
          nodenumber=[nodenumber (yco(i1)-1)*(N+1)+xco(i1)];
 end
 nodenumber
 c=column2_d2(nodenumber,N);
 Rmat=[Rmat c];
       
   end
   
     
   end

