function a=generafis(x);
%Función para generar un sistema de inferencia difusa tipo Mandani

%Sistema de inferencia difusa
a= newfis('BDVariante2');

%Variable de entrada Rojo
a = addvar(a,'input','Rojo',[0 255]);
a = addmf(a,'input',1,'MuyPocoRojo','trimf',[x(1) x(1) x(1)]);
a = addmf(a,'input',1,'PocoRojo','trimf',[x(2) x(2) x(2)]);
a = addmf(a,'input',1,'RojoMedio','trimf',[x(3) x(3) x(3)]);
a = addmf(a,'input',1,'MuyAltoRojo','trimf',[x(4) x(4) x(4)]);
a = addmf(a,'input',1,'AltoRojo','trimf',[x(4) x(4) x(4)]);


%Variable de entrada Verde
a = addvar(a,'input','Verde',[0 255]);
a = addmf(a,'input',2,'MuyPocoVerde','trimf',[x(5) x(5) x(5)]);
a = addmf(a,'input',2,'PocoVerde','trimf',[x(6) x(6) x(6)]);
a = addmf(a,'input',2,'AltoVerde','trimf',[x(7) x(7) x(7)]);
a = addmf(a,'input',2,'VerdeMedio','trimf',[x(8) x(8) x(8)]);
a = addmf(a,'input',2,'MuyAltoVerde','trimf',[x(9) x(9) x(9)]);

%Variable de entrada Azul
a = addvar(a,'input','Azul',[0 255]);
a = addmf(a,'input',3,'PocoAzul','trimf',[x(10) x(10) x(10)]);
a = addmf(a,'input',3,'AzulMedio','trimf',[x(11) x(11) x(11)]);
a = addmf(a,'input',3,'AltoAzul','trapmf',[x(12) x(12) x(12) x(12)]);

%Variable de salida
a = addvar(a,'output','Madurez',[0 10]);
a = addmf(a,'output',1,'Verde','trimf',[x(13) x(13) x(13)]);
a = addmf(a,'output',1,'Crecimiento','trimf',[x(14) x(14) x(14)]);
a = addmf(a,'output',1,'Sobremaduro','trimf',[x(15) x(15) x(15)]);
a = addmf(a,'output',1,'Maduro','trimf',[x(16) x(16) x(16)]);

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