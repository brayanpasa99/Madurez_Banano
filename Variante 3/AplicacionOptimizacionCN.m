%Aplicaci�n optimizaci�n de un sistema difuso que convierte una se�al triangular a seno

close all
clear all
warning ('off','all')

%Datos de entrenamiento
DataV3;

%Sistema difuso sin optimizar
a=generafisV3(X0);
mse_no_entrenado=desempe(X0)

%Opciones algoritmo CN
options = optimset('Display','iter','MaxIter',5);
x = fminunc(@desempe,X0,options);

%Sistema difuso entrenado con CN
a=generafisV3(x);
mse_entrenado=desempe(x)
