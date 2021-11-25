% % f_serie
clc, clear all, close all;
%x_n es la señal periodica discreta a trabajar
x_n=[1,1,1,1,0,1,2,3];
%N N es el periodo (que en teoria es la longitud de x_n
N=length(x_n);
%vn es un vector de tiempo que debe tener tantos elementos como nuestra
%señal discreta
vn=0:1:length(x_n)-1;
ejemplo=f_coef(x_n,N,1);
% Reconstruir señal



R=real(ejemplo);
I=imag(ejemplo)*1i;
I=fix(I*100)/100; %% machetazo

k1=1;%
k2=2;
k3=3;

pistaa=ejemplo(1)+ (R(2)*exp(1i*2*pi*k1*vn/N)) + (I(2)*exp(1i*2*pi*k1*vn/N))...
    + (R(4)*exp(1i*2*pi*k3*vn/N)) + (I(4)*exp(1i*2*pi*k3*vn/N));

k=1;
pista2=0;
for i=2:length(ejemplo)
    pista2=pista2+((R(i)*exp(1i*2*pi*k*vn/N)) + (I(i)*exp(1i*2*pi*k*vn/N)))
    k=k+1;
end
pista= ejemplo(1) + pista2;
stem(vn,pista);