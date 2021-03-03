function a=generafis(x);
%Función para generar un sistema de inferencia difusa tipo Mandani

%Sistema de inferencia difusa
a= newfis('BDVariante1');

%Variable de entrada Rojo
a = addvar(a,'input','Rojo',[0 255]);
a = addmf(a,'input',1,'PocoRojo','gaussmf',[x(1) x(2)]);
a = addmf(a,'input',1,'RojoMedio','gaussmf',[x(3) x(4)]);
a = addmf(a,'input',1,'BastanteRojo','gaussmf',[x(5) x(6)]);

%Variable de entrada Verde
a = addvar(a,'input','Verde',[0 255]);
a = addmf(a,'input',2,'PocoVerde','zmf',[x(7) x(8)]);
a = addmf(a,'input',2,'VerdeMedio','gaussmf',[x(9) x(10)]);
a = addmf(a,'input',2,'BastanteVerde','smf',[x(11) x(12)]);


%Variable de entrada Azul
a = addvar(a,'input','Azul',[0 255]);
a = addmf(a,'input',3,'PocoAzul','gaussmf',[x(13) x(14)]);
a = addmf(a,'input',3,'AzulMedio','gaussmf',[x(15) x(16)]);
a = addmf(a,'input',3,'BastanteAzul','gaussmf',[x(17) x(18)]);

%Variable de salida
a = addvar(a,'output','Madurez',[0 10]);
a = addmf(a,'output',1,'Verde','zmf',[x(19) x(20)]);
a = addmf(a,'output',1,'Crecimiento','gaussmf',[x(21) x(22)]);
a = addmf(a,'output',1,'Maduro','gaussmf',[x(23) x(24)]);
a = addmf(a,'output',1,'Sobremaduro','smf',[x(25) x(26)]);

%Reglas de inferencia
ruleList = [
  	1 2 1 1 1 1
   	1 3 1 2 1 1
    3 3 1 3 1 1
    2 2 0 4 1 1
    1 1 1 4 1 1];

%Adición de reglas de inferencia
a = addrule(a,ruleList);