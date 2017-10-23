function [Rmat,n1,m1,m2,m3,m4]=Rmatrix_d2(N)

index=((N+1)*(N+1)-1)/2+1;
c=zeros((N+1)*(N+1),1);
c(index,1)=1.0;

Rmat=[];
Rmat1=p1_d2(N);
Rmat2=p2_d2(N);
Rmat3=p3_d2(N);
Rmat4=p4_d2(N);
%Rmat5=p5(N);
%Rmat6=p6(N);

Rmat=[c Rmat1 Rmat2 Rmat3 Rmat4 ];
%Rmat=[Rmat4];

b1=[c Rmat1];
b2=[Rmat2];
b3=Rmat3;
b4=Rmat4;
[n1,m1]=size(b1)
[n2,m2]=size(b2)
[n3,m3]=size(b3)
[n4,m4]=size(b4)
[rows,columns]=size(Rmat);

Rmattemp=Rmat;
Rmat=zeros(2*rows,2*columns);
for i=1:rows
    for j=1:rows
    Rmat(2*j-1,2*i-1)=Rmattemp(j,i);
    end
end


for i=1:rows
    for j=1:rows
    Rmat(2*j,2*i)=Rmattemp(j,i);
    end
end

