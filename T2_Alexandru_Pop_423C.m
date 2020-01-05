syms t n

P=40; 
w=2*pi/P; 
D=20;
rezolutie=1/5; 
timp_triunghi_cresc= 0:rezolutie/D:1-rezolutie/D;
timp_triunghi_descresc=1:-1*rezolutie/D:rezolutie/D;

semnal=[timp_triunghi_cresc,timp_triunghi_descresc,timp_triunghi_cresc,timp_triunghi_descresc,timp_triunghi_cresc,timp_triunghi_descresc];


timp=0:rezolutie:120-rezolutie; 


n=-50:-1; 

cnminus=int(t/D*power( exp(1),-1j*n*w*t),t,0,D)+int((1-(t-D)/D)*power( exp(1),-1j*n*w*t),t,D,2*D);
m=0;
c0=int(t/D*power( exp(1),-1j*m*w*t),t,0,D)+int((1-(t-D)/D)*power( exp(1),-1j*m*w*t),t,D,2*D);
p=1:50;
cnplus=int(t/D*power( exp(1),-1j*p*w*t),t,0,D)+int((1-(t-D)/D)*power( exp(1),-1j*p*w*t),t,D,2*D);


cn=[cnminus,c0,cnplus];
cnminus=double(cnminus);
cnplus=double(cnplus);
c0=double(c0);
cn=double(cn);

semnal2=c0/P;
for i=1:50
semnal2=semnal2+2*cnplus(i)*power(exp(1),j*i*w*timp)/P;
end

figure(1)
plot(timp,semnal);
hold on
plot(timp,semnal2,'.'); 

title('x(t) (Linie solida) si semnalul reconstruit cu 50 de coeficienti (Linie punctata)')
hold off

f=-50:50;
figure(2)
stem(f,abs(cn));
title('Spectrul semnalului x(t) care obtine din calculul a 51 de coeficienti')