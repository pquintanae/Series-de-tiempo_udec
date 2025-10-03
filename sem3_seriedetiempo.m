%Laboratorio Semana 03
clear % limpiar memoria
close all % Cierra y borra la ventana de figuras previas

% Componentes series de tiempo
% Tendencia
% Ciclos (Regulares o irregulares)
% Error

% ST=Tendencia + Ciclos + error
t=1:100; %";" oculta el resultado

error1 = randn(1,100); %variable
error2=1 +2*randn(1,100); %1 le va sumar a todos los valores 1 y una dv de 2

figure %ejecute una ventana nueva para hacer un gráfico
subplot(2,1,1)
plot(t,error1)
title('Grafico Error')
xlabel('Tiempo')
ylabel('variable')
set(gca,'fontsize',16)%gca crea el ultimo objeto que llamo matlab/llama a las propiedades del gráfico
%figure %para no sobreponer la figura sobre otra, sino creo otra ventana con la nueva figura
%h=plot(t, error1,'r')

%mean(error1)
subplot(2,1,2)
plot(t,error2)

mean(error2)
std(error2)

%Command Window 
%mean(error1)

figure
subplot(1,2,1)
histogram(error1)

subplot(1,2,2)
histogram(error2)

%Graficar dos lineas en el mismo grafico
figure %ejecute una ventana nueva para hacer un gráfico
plot(t,error1,'r--',LineWidth=2) %'r'=color, -- = tipo de linea
hold on %graficar una segunda data en el mismo gráfico
plot(t,error2,'k-.',LineWidth=2)
title('Grafico Error')
xlabel('Tiempo')
ylabel('variable')
set(gca,'fontsize',16)%gca crea el ultimo objeto que llamo matlab/llama a las propiedades del gráfico
legend('error1','error2')
grid on %aparece las lineas de la grilla








