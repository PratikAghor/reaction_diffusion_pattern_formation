fid = fopen('J.dat');
n1    = textscan(fid,'%f',1,'HeaderLines',3);   n1       = n1{1};
m1    = textscan(fid,'%f',1);                   m1       = m1{1};
issym = textscan(fid,'%u',1);                   issymNSL = issym{1};
ncoef = textscan(fid,'%f',1);                   ncoef    = ncoef{1};
%--- read data line by line
        ii  = zeros(ncoef,1);
        jj  = zeros(ncoef,1);
        aij = zeros(ncoef,1);
        for kk=1:ncoef
            iitmp  = textscan(fid,'%u',1);               ii(kk)  = iitmp{1};
            jjtmp  = textscan(fid,'%u',1);               jj(kk)  = jjtmp{1};
            aijtmp = textscan(fid,' %f %c %f %c',1);     aij(kk) = aijtmp{1};
        end
fclose(fid);
Jac = sparse(ii,jj,aij,n1,m1);
        clear('aij','ii','jj');
        
%Jac+0
spy(Jac)
%**********************************************************************%
N=40;
[Rmat,n1,m1,m2,m3,m4]=Rmatrix_d2(N);

JStar=Rmat'*Jac*Rmat;
n1=size(Jac);
for k=1:n1
    for l=1:n1
       if (abs(JStar(k,l))<0.00001 )
           JStar(k,l)=0;
       end
    end
end
block1=JStar(1:2*m1,1:2*m1);
block2=JStar(2*m1+1:2*(m1+m2),2*m1+1:2*(m1+m2));
block3=JStar(2*(m1+m2)+1:2*(m1+m2+m3),2*m2+2*m1+1:2*(m1+m2+m3));
block4=JStar(2*(m1+m2+m3)+1:2*(m1+m2+m3+m4),2*(m1+m2+m3)+1:2*(m1+m2+m3+m4));

