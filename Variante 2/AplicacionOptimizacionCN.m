%Aplicación optimización de un sistema difuso que convierte una señal triangular a seno

close all
clear all
warning ('off','all')

%Datos de entrenamiento
DataV2;

%Sistema difuso sin optimizar
a=generafisV2(X0);
mse_no_entrenado=desempe(X0)

%Opciones algoritmo CN
options = optimset('Display','iter','MaxIter',5);
x = fminunc(@desempe,X0,options);

%Sistema difuso entrenado con CN
a=generafisV2(x);
mse_entrenado=desempe(x)
