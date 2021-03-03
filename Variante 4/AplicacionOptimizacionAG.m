%Aplicación de optimización reconocimiento de madurez del banano

close all
clear all
warning ('off','all')

%Cargar Datos
DataV4;

%Sistema difuso sin optimizar
a=generafisV4(X0);
mse_no_entrenado=desempe(X0)

%Optimización con algoritmos genéticos V1
optionsga = gaoptimset('Display','iter','Generations',10);
x = ga(@desempe,34,optionsga);

%Sistema difuso entrenado con AG
a=generafisV4(x);
mse_entrenado=desempe(x)

