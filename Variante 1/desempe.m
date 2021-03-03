function mse=desempe(x)
%Función de desempeño

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

%Calcular el índice de desempeño
mse=1/n*sum((S'-Sr).^2);
