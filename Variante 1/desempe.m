function mse=desempe(x)
%Funci�n de desempe�o

warning('off', 'all')

%Cargar los datos de entrenamiento
DataV1;

%Generar el sistema difuso

a=generafisV1(x);

[m,n] = size(P1);
Sr=[];
for i = 1:n
    %disp(P1(:,i));
    %Evaluar el sistema difuso
    Sr=[Sr evalfis(P1(:,i),a)];
end

%Calcular el �ndice de desempe�o
mse=1/n*sum((S'-Sr).^2);
