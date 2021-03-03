%Aplicación de optimización reconocimiento de madurez del banano

close all
clear all
warning ('off','all')

%Cargar Datos
DataV1;

%Sistema difuso sin optimizar
a=generafisV1(X0);
mse_no_entrenado=desempe(X0)

%Optimización con algoritmos genéticos V1
optionsga = gaoptimset('Display','iter','Generations',10);
x = ga(@desempe,26,optionsga);

%Sistema difuso entrenado con AG
a=generafisV1(x);
mse_entrenado=desempe(x)

