
%  clear , close all, clc;

function v_salida=f_coef(x_n,N,vn)

 %Ingrese un vector
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %  x_n=[1,1,0,0];
 %Ingrese el periodo de la señal
 %(el periodo es equivalente a la ong del vector 0, 1, 2 ,3
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %  N=4;
 %encontramos los CsubK
 %para quitar la sumatoria recorremos puntoa  punto
%  el vector. K0 es la posicion del vctor(0,1,2,3) (distinto a el valor
%  almacenado en el vector)
% Tengo que hacer el ciclo for dependiendo del numero de Ks
% que tenga que encontrar (relacionado al periodo)

% Nota: k es el contador que va de 0 a N-1
%Nota 2: para Matlab j es mejor escribirlo como "-1i"
%Nota 3: Euler en matalb se escribe como exp
% k=0;%mientras las pruebas   
for k=0:N-1
    for i=1:N
        Sumatoria(i)=( x_n(i) *  exp(1)^((-1i*2*pi*k*(i-1))/N)  );%i-1 por que el contador empieza en 1 y n debe empezar en cero n=i
    end
    
    v_salida(k+1)=sum(Sumatoria)/N;
    clear Sumatoria
end

 
 
 
 