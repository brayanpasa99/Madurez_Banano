%Aplicaci�n optimizaci�n de un sistema difuso que convierte una se�al triangular a seno

close all
clear all
warning ('off','all')

%Datos de entrenamiento
DataV4;

%Sistema difuso sin optimizar
a=generafisV4(X0)
mse_no_entrenado=desempe(X0)

%Opciones algoritmo CN
options = optimset('Display','iter','Generations',5);
x = fminunc(@desempe,x,options);

%Sistema difuso entrenado con CN
a=generafisV4(x)
mse_entrenado=desempe(x)
