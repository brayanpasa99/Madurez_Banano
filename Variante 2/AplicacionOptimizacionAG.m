%Aplicación de optimización reconocimiento de madurez del banano

close all
clear all
warning ('off','all')

%Cargar Datos
DataV2;

%Sistema difuso sin optimizar
a=generafisV2(X0);
mse_no_entrenado=desempe(X0)

%Optimización con algoritmos genéticos V2
optionsga = gaoptimset('Display','iter','Generations',10);
x = ga(@desempe,16,optionsga);

%Sistema difuso entrenado con AG
a=generafisV2(x);
mse_entrenado=desempe(x)
