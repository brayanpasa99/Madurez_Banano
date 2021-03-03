function a=generafis(x);
%Función para generar un sistema de inferencia difusa tipo Mandani

%Sistema de inferencia difusa
a= newfis('BDVariante2');

%Variable de entrada Rojo
a = addvar(a,'input','Rojo',[0 255]);
a = addmf(a,'input',1,'MuyPocoRojo','gaussmf',[x(1) x(2)]);
a = addmf(a,'input',1,'PocoRojo','gaussmf',[x(3) x(4)]);
a = addmf(a,'input',1,'RojoMedio','gaussmf',[x(5) x(6)]);
a = addmf(a,'input',1,'MuyAltoRojo','gaussmf',[x(7) x(8)]);
a = addmf(a,'input',1,'AltoRojo','gaussmf',[x(9) x(10)]);


%Variable de entrada Verde
a = addvar(a,'input','Verde',[0 255]);
a = addmf(a,'input',2,'MuyPocoVerde','gaussmf',[x(11) x(12)]);
a = addmf(a,'input',2,'PocoVerde','gaussmf',[x(13) x(14)]);
a = addmf(a,'input',2,'AltoVerde','gaussmf',[x(15) x(16)]);
a = addmf(a,'input',2,'VerdeMedio','gaussmf',[x(17) x(18)]);
a = addmf(a,'input',2,'MuyAltoVerde','gaussmf',[x(19) x(20)]);

%Variable de entrada Azul
a = addvar(a,'input','Azul',[0 255]);
a = addmf(a,'input',3,'PocoAzul','gaussmf',[x(21) x(22)]);
a = addmf(a,'input',3,'AzulMedio','gaussmf',[x(23) x(24)]);
a = addmf(a,'input',3,'AltoAzul','gaussmf',[x(25) x(26)]);

%Variable de salida
a = addvar(a,'output','Madurez',[0 10]);
a = addmf(a,'output',1,'Verde','gaussmf',[x(27) x(28)]);
a = addmf(a,'output',1,'Crecimiento','gaussmf',[x(29) x(30)]);
a = addmf(a,'output',1,'Sobremaduro','gaussmf',[x(31) x(32)]);
a = addmf(a,'output',1,'Maduro','gaussmf',[x(33) x(34)]);

%Reglas de inferencia
ruleList = [
  	1 4 1 1 1 1
   	2 3 1 2 1 1
    3 3 1 2 1 1
    4 5 1 4 1 1
    4 3 1 3 1 1
    5 5 1 2 1 1
    4 4 1 3 1 1
    4 3 2 4 1 1
    5 4 1 3 1 1
    2 1 1 3 1 1];

%Adición de reglas de inferencia
a = addrule(a,ruleList);