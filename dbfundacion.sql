create database dbfundacion;
use dbfundacion;
drop database dbfundacion;
create table Usuario
(
id_Usuario int PRIMARY KEY auto_increment ,
user_Usuario varchar (50) not null,
password_Usuario varchar (8) not null,
nombre_Usuario varchar (50) not null,
apellido_Usuario varchar (50) not null,
tipoDoc_Usuario varchar (50) not null,
doc_Usuario bigint not null,
estado_Usuario varchar (50) not null,
id_tipoUsuario_FK int ,
id_Especialidad_FK int 
);

create table TIPOUSUARIO
(
id_tipoUsuario int PRIMARY KEY auto_increment ,
nombre_Tipo_Usuario varchar (50) not null
);


create table CARGO
(
id_Cargo int PRIMARY KEY auto_increment,
nombre_Cargo varchar (50) not null
);

create table CARGOUSUARIO
(
id_Cargo_FK int ,
id_Usuario_FK int 
);

create table ESPECIALIDAD
(
id_Especialidad int PRIMARY KEY auto_increment ,
nombre_Especialidad varchar (50) not null
);

create table OBSERVACION
(
id_Observacion int PRIMARY KEY auto_increment ,
fecha_Observacion DATE,
tipo_Falta VARCHAR (50),
descripcion_Observacion VARCHAR (100)
);

create table REGISTROOBSERVACION
(
id_Registro_Observacion int PRIMARY KEY auto_increment ,
id_Observacion_FK int,
id_Usuario_FKKK int ,
descargos_Usuario VARCHAR (500) not null
);

create table SALON
(
id_Salon INT PRIMARY KEY auto_increment ,
nombre_Salon VARCHAR (50) not null,
ubicacion_Salon VARCHAR (50) not null
);

create table CURSO
(
id_Curso int PRIMARY KEY auto_increment ,
codigo_Curso VARCHAR (50) not null
);

create table SEGUIMIENTOCURSO
(
id_Seguimiento INT PRIMARY KEY auto_increment ,
id_Usuario_FKFKF int ,
id_Curso_FK int ,
fecha_Seguimiento DATE not null,
id_Salon_FK INT 
);

create table ASIGNACIONCARGA
(
id_Asignacion INT PRIMARY KEY auto_increment ,
id_Materia_FK INT ,
id_Usuario_KFFK INT ,
id_Curso_FKF int ,
fecha_Asignacion DATE not null
); 

create table MATERIA
(
id_Materia INT PRIMARY KEY auto_increment ,
nombre_Materia VARCHAR (50) not null,
horasSemanales_Materia INT not null
);

create table INASISTENCIA
(
id_Inasistencia INT PRIMARY KEY auto_increment ,
fecha_Inasistencia DATE not null,
excusa_Inasistencia VARCHAR (2),
id_Usuario_FKF int 
);

 

create table CALIFICACION
(
id_Calificacion INT PRIMARY KEY auto_increment ,
notaPeriodo1_Calificacion INT not null,
notaPeriodo2_Calificacion INT not null,
notaPeriodo3_Calificacion INT not null,
notaFinal1_Calificacion INT not null,
fechaRegistro_Calificacion DATE not null,
id_Usuario_FKFK int 
);



ALTER TABLE CARGOUSUARIO ADD CONSTRAINT FK_id_Cargo FOREIGN KEY (id_Cargo_FK) REFERENCES CARGO (id_Cargo);
ALTER TABLE CARGOUSUARIO ADD CONSTRAINT FK_id_Usuario FOREIGN KEY (id_Usuario_FK) REFERENCES USUARIO (id_Usuario);
ALTER TABLE USUARIO ADD CONSTRAINT FK_id_tipoUsuario FOREIGN KEY (id_tipoUsuario_FK) REFERENCES TIPOUSUARIO (id_tipoUsuario);
ALTER TABLE USUARIO ADD CONSTRAINT FK_id_Especialidad FOREIGN KEY (id_Especialidad_FK) REFERENCES ESPECIALIDAD (id_Especialidad);

ALTER TABLE CALIFICACION ADD CONSTRAINT FKFK_id_Usuario FOREIGN KEY (id_Usuario_FKFK) REFERENCES USUARIO (id_Usuario);

ALTER TABLE INASISTENCIA ADD CONSTRAINT FKF_id_Usuario FOREIGN KEY (id_Usuario_FKF) REFERENCES USUARIO (id_Usuario);
ALTER TABLE REGISTROOBSERVACION ADD CONSTRAINT FK_id_Observacion FOREIGN KEY (id_Observacion_FK) REFERENCES OBSERVACION (id_Observacion);
ALTER TABLE REGISTROOBSERVACION ADD CONSTRAINT FKKK_id_Usuario FOREIGN KEY (id_Usuario_FKKK) REFERENCES USUARIO (id_Usuario);
ALTER TABLE ASIGNACIONCARGA ADD CONSTRAINT FK_id_Materia FOREIGN KEY (id_Materia_FK) REFERENCES MATERIA (id_Materia);
ALTER TABLE ASIGNACIONCARGA ADD CONSTRAINT KFFK_id_Usuario FOREIGN KEY (id_Usuario_KFFK) REFERENCES USUARIO (id_Usuario);
ALTER TABLE ASIGNACIONCARGA ADD CONSTRAINT FKF_id_Curso FOREIGN KEY (id_Curso_FKF) REFERENCES CURSO (id_Curso);
ALTER TABLE SEGUIMIENTOCURSO ADD CONSTRAINT FKFKF_id_Usuario FOREIGN KEY (id_Usuario_FKFKF) REFERENCES USUARIO (id_Usuario);
ALTER TABLE SEGUIMIENTOCURSO ADD CONSTRAINT FK_id_Curso FOREIGN KEY (id_Curso_FK) REFERENCES CURSO (id_Curso);
ALTER TABLE SEGUIMIENTOCURSO ADD CONSTRAINT FK_id_Salon FOREIGN KEY (id_Salon_FK) REFERENCES SALON (id_Salon);




insert into SALON  (nombre_Salon,ubicacion_Salon) values ('Amarillo','Piso 1');
insert into SALON  (nombre_Salon,ubicacion_Salon) values ('Verde','Piso 1');
insert into SALON  (nombre_Salon,ubicacion_Salon) values ('Azúl','Piso 2');
insert into SALON  (nombre_Salon,ubicacion_Salon) values ('Rojo','Piso 2');
insert into SALON  (nombre_Salon,ubicacion_Salon) values ('Morado','Piso 2');
/*Sentencia insert para ingresar registros*/

select * from SALON;
/*Para visualizar registros de la tabla */

insert into CURSO  (codigo_Curso) values ('J1');
insert into CURSO  (codigo_Curso) values ('J2');
insert into CURSO  (codigo_Curso) values ('J3');
insert into CURSO  (codigo_Curso) values ('P1');
insert into CURSO  (codigo_Curso) values ('P2');
/*Sentencia insert para ingresar registros*/

select * from CURSO;
/*Para visualizar registros de la tabla */

insert into MATERIA  (nombre_Materia,horasSemanales_Materia) values ('Educación Física','3');
insert into MATERIA  (nombre_Materia,horasSemanales_Materia) values ('Manualidades','4');
insert into MATERIA  (nombre_Materia,horasSemanales_Materia) values ('Lenguaje','7');
insert into MATERIA  (nombre_Materia,horasSemanales_Materia) values ('Matemáticas','5');
insert into MATERIA  (nombre_Materia,horasSemanales_Materia) values ('Ética','6');
/*Sentencia insert para ingresar registros*/

select * from MATERIA;
/*Para visualizar registros de la tabla */

insert into ESPECIALIDAD  (nombre_Especialidad) values ('Área Motriz ');
insert into ESPECIALIDAD  (nombre_Especialidad) values ('Área de Lenguaje');
insert into ESPECIALIDAD  (nombre_Especialidad) values ('Área Socio-afectiva');
insert into ESPECIALIDAD  (nombre_Especialidad) values ('Área Cognoscitiva');
insert into ESPECIALIDAD  (nombre_Especialidad) values ('Ninguna');
/*Sentencia insert para ingresar registros*/

select * from ESPECIALIDAD;
/*Para visualizar registros de la tabla */


insert into TIPOUSUARIO  (nombre_Tipo_Usuario) values ('Administrador');
insert into TIPOUSUARIO  (nombre_Tipo_Usuario) values ('Profesor');
insert into TIPOUSUARIO  (nombre_Tipo_Usuario) values ('Estudiante');
/*Sentencia insert para ingresar registros*/

select * from TIPOUSUARIO;
/*Para visualizar registros de la tabla */


insert into CARGO  (nombre_Cargo) values ('Rector');
insert into CARGO  (nombre_Cargo) values ('Cordinador');
insert into CARGO  (nombre_Cargo) values ('Profesor');
/*Sentencia insert para ingresar registros*/

select * from CARGO;
/*Para visualizar registros de la tabla */


insert into INASISTENCIA  (fecha_Inasistencia,excusa_Inasistencia,id_Usuario_FKF) 
values ('2020-02-25','SI',4);
insert into INASISTENCIA  (fecha_Inasistencia,excusa_Inasistencia,id_Usuario_FKF) 
values ('2020-01-27','SI',4);
insert into INASISTENCIA  (fecha_Inasistencia,excusa_Inasistencia,id_Usuario_FKF) 
values ('2020-03-06','SI',5);
insert into INASISTENCIA  (fecha_Inasistencia,excusa_Inasistencia,id_Usuario_FKF) 
values ('2020-03-12','NO',4);
insert into INASISTENCIA  (fecha_Inasistencia,excusa_Inasistencia,id_Usuario_FKF)
 values ('2020-05-08','NO',5);
/*Sentencia insert para ingresar registros*/

select * from INASISTENCIA;
/*Para visualizar registros de la tabla */


insert into CALIFICACION  (notaPeriodo1_Calificacion,notaPeriodo2_Calificacion,notaPeriodo3_Calificacion,notaFinal1_Calificacion
,id_Usuario_FKFK,fechaRegistro_Calificacion) 
			values (45,40,50,45,4,'2020-03-05');
insert into CALIFICACION  (notaPeriodo1_Calificacion,notaPeriodo2_Calificacion,notaPeriodo3_Calificacion,notaFinal1_Calificacion
,id_Usuario_FKFK,fechaRegistro_Calificacion) 
			values (40,35,38,38,4,'2020-03-05');
insert into CALIFICACION  (notaPeriodo1_Calificacion,notaPeriodo2_Calificacion,notaPeriodo3_Calificacion,notaFinal1_Calificacion
,id_Usuario_FKFK,fechaRegistro_Calificacion) 
			values (45,50,50,48,4,'2020-03-05');
insert into CALIFICACION  (notaPeriodo1_Calificacion,notaPeriodo2_Calificacion,notaPeriodo3_Calificacion,notaFinal1_Calificacion
,id_Usuario_FKFK,fechaRegistro_Calificacion) 
			values (50,30,20,33,4,'2020-03-05');
insert into CALIFICACION  (notaPeriodo1_Calificacion,notaPeriodo2_Calificacion,notaPeriodo3_Calificacion,notaFinal1_Calificacion
,id_Usuario_FKFK,fechaRegistro_Calificacion) 
			values (30,40,20,30,4,'2020-03-05');
/*Sentencia insert para ingresar registros*/

select * from CALIFICACION;
/*Para visualizar registros de la tabla */
            
insert into OBSERVACION  (fecha_Observacion,tipo_Falta,descripcion_Observacion) values ('2020-06-08','Leve',' Llegar tarde o interrumpir injustificadamente las clases');
insert into OBSERVACION  (fecha_Observacion,tipo_Falta,descripcion_Observacion) values ('2020-05-09','Grave','Fumar en los espacios ');
insert into OBSERVACION  (fecha_Observacion,tipo_Falta,descripcion_Observacion) values ('2020-03-10','Gravisima','Irrespetar a los compañeros con manifestaciones ');
insert into OBSERVACION  (fecha_Observacion,tipo_Falta,descripcion_Observacion) values ('2020-02-08','Leve','El uso inapropiado del teléfono celular');
insert into OBSERVACION  (fecha_Observacion,tipo_Falta,descripcion_Observacion) values ('2020-01-30','Grave','El uso de apodos, la falta de cortesía, las palabras obscenas');
/*Sentencia insert para ingresar registros*/

select * from OBSERVACION;
/*Para visualizar registros de la tabla */


insert into Usuario  (user_Usuario,password_Usuario,nombre_Usuario,apellido_Usuario,tipoDoc_Usuario,doc_Usuario,estado_Usuario,id_tipoUsuario_FK,id_Especialidad_FK) 
		values ('Admin','Admin','Jorge','Diaz','C.C.','1026458923','Activo',1,1);
insert into Usuario  (user_Usuario,password_Usuario,nombre_Usuario,apellido_Usuario,tipoDoc_Usuario,doc_Usuario,estado_Usuario,id_tipoUsuario_FK,id_Especialidad_FK) 
		values ('Profe_1','Profe_1','Samuel','Rincon','C.C.','1044458923','Activo',2,2);
insert into Usuario  (user_Usuario,password_Usuario,nombre_Usuario,apellido_Usuario,tipoDoc_Usuario,doc_Usuario,estado_Usuario,id_tipoUsuario_FK,id_Especialidad_FK) 
		values ('Profe_2','Profe_2','Liliana','Martinez','C.C.','1036458923','Activo',2,3);
insert into Usuario  (user_Usuario,password_Usuario,nombre_Usuario,apellido_Usuario,tipoDoc_Usuario,doc_Usuario,estado_Usuario,id_tipoUsuario_FK,id_Especialidad_FK) 
		values ('Estudiante_1','Estud_1','Luna','Parra','T.I.','1069458923','Activo',3,5);
insert into Usuario  (user_Usuario,password_Usuario,nombre_Usuario,apellido_Usuario,tipoDoc_Usuario,doc_Usuario,estado_Usuario,id_tipoUsuario_FK,id_Especialidad_FK) 
		values ('Estudiante_2','Estud_2','Jorge','Barrera','T.I.','1036558923','Activo',3,5);
/*Sentencia insert para ingresar registros*/

select * from Usuario;
/*Para visualizar registros de la tabla */
        
        
insert into SEGUIMIENTOCURSO  (id_Usuario_FKFKF,id_Curso_FK,fecha_Seguimiento,id_Salon_FK) values (2,1,'2020-05-06',1);
insert into SEGUIMIENTOCURSO  (id_Usuario_FKFKF,id_Curso_FK,fecha_Seguimiento,id_Salon_FK) values (3,2,'2020-05-06',2);
insert into SEGUIMIENTOCURSO  (id_Usuario_FKFKF,id_Curso_FK,fecha_Seguimiento,id_Salon_FK) values (4,3,'2020-05-06',3);
insert into SEGUIMIENTOCURSO  (id_Usuario_FKFKF,id_Curso_FK,fecha_Seguimiento,id_Salon_FK) values (5,4,'2020-05-06',4);
insert into SEGUIMIENTOCURSO  (id_Usuario_FKFKF,id_Curso_FK,fecha_Seguimiento,id_Salon_FK) values (2,3,'2020-05-06',4);
/*Sentencia insert para ingresar registros*/

select * from Usuario;
/*Para visualizar registros de la tabla */


insert into ASIGNACIONCARGA  (id_Materia_FK,id_Usuario_KFFK,id_Curso_FKF,fecha_Asignacion) values (1,2,1,'2020-05-06');
insert into ASIGNACIONCARGA  (id_Materia_FK,id_Usuario_KFFK,id_Curso_FKF,fecha_Asignacion) values (2,3,2,'2020-05-06');
insert into ASIGNACIONCARGA  (id_Materia_FK,id_Usuario_KFFK,id_Curso_FKF,fecha_Asignacion) values (3,4,3,'2020-05-06');
insert into ASIGNACIONCARGA  (id_Materia_FK,id_Usuario_KFFK,id_Curso_FKF,fecha_Asignacion) values (4,5,4,'2020-05-06');
insert into ASIGNACIONCARGA  (id_Materia_FK,id_Usuario_KFFK,id_Curso_FKF,fecha_Asignacion) values (5,2,5,'2020-05-06');
/*Sentencia insert para ingresar registros*/

select * from ASIGNACIONCARGA;
/*Para visualizar registros de la tabla */


insert into CARGOUSUARIO  (id_Cargo_FK,id_Usuario_FK) values (1,2);
insert into CARGOUSUARIO  (id_Cargo_FK,id_Usuario_FK) values (2,3);
insert into CARGOUSUARIO  (id_Cargo_FK,id_Usuario_FK) values (3,2);
insert into CARGOUSUARIO  (id_Cargo_FK,id_Usuario_FK) values (2,3);
insert into CARGOUSUARIO  (id_Cargo_FK,id_Usuario_FK) values (3,3);
/*Sentencia insert para ingresar registros*/

select * from CARGOUSUARIO;
/*Para visualizar registros de la tabla */


/*insert into USUARIOINASISTENCIA  (id_Inasistencia_FK,id_Usuario_FKF) values (1,4 );
insert into USUARIOINASISTENCIA  (id_Inasistencia_FK,id_Usuario_FKF) values (2,4);
insert into USUARIOINASISTENCIA  (id_Inasistencia_FK,id_Usuario_FKF) values (3,5);
insert into USUARIOINASISTENCIA  (id_Inasistencia_FK,id_Usuario_FKF) values (4,4);
insert into USUARIOINASISTENCIA  (id_Inasistencia_FK,id_Usuario_FKF) values (5,5);
/*Sentencia insert para ingresar registros*/

/*select * from USUARIOINASISTENCIA;
/*Para visualizar registros de la tabla */


/*insert into USUARIOCALIFICACION  (id_Calificacion_FK,id_Usuario_FKFK,fechaRegistro_Calificacion) values (5,4,'2020-03-05');
insert into USUARIOCALIFICACION  (id_Calificacion_FK,id_Usuario_FKFK,fechaRegistro_Calificacion) values (4,5,'2020-05-05');
insert into USUARIOCALIFICACION  (id_Calificacion_FK,id_Usuario_FKFK,fechaRegistro_Calificacion) values (3,4,'2020-05-05');
insert into USUARIOCALIFICACION  (id_Calificacion_FK,id_Usuario_FKFK,fechaRegistro_Calificacion) values (2,5,'2020-03-05');
insert into USUARIOCALIFICACION  (id_Calificacion_FK,id_Usuario_FKFK,fechaRegistro_Calificacion) values (1,4,'2020-05-05');
/*Sentencia insert para ingresar registros*/

/*select * from USUARIOCALIFICACION;*/
/*Para visualizar registros de la tabla */


insert into REGISTROOBSERVACION  (id_Observacion_FK,id_Usuario_FKKK,descargos_Usuario) values (1,4,'Vive lejos y no paso el bus');
insert into REGISTROOBSERVACION  (id_Observacion_FK,id_Usuario_FKKK,descargos_Usuario) values (2,5,'Niega la falta ');
insert into REGISTROOBSERVACION  (id_Observacion_FK,id_Usuario_FKKK,descargos_Usuario) values (3,4,'Se excusa que el libre expresion');
insert into REGISTROOBSERVACION  (id_Observacion_FK,id_Usuario_FKKK,descargos_Usuario) values (4,5,'Su madre la llamo por una emergencia familiar');
insert into REGISTROOBSERVACION  (id_Observacion_FK,id_Usuario_FKKK,descargos_Usuario) values (5,5,'El estudiante niega la falta ');
/*Sentencia insert para ingresar registros*/

select * from REGISTROOBSERVACION;
/*Para visualizar registros de la tabla */

/*----------------------------------------------------------------------------------Remplazar registros (Replace)-------------------------------------------------------------------------------*/

/*
select nombre_Usuario, replace (nombre_Usuario,'Jorge','Santiago') as Modificacion from USUARIO;
select nombre_Especialidad, replace (nombre_Especialidad,'Área','Dependecia') as Modificacion 
from ESPECIALIDAD;
select nombre_Materia, replace (nombre_Materia,'Ética','Cultura') as Modificacion from MATERIA;
select nombre_Tipo_Usuario, replace (nombre_Tipo_Usuario,'Administrador','Director') as Modificacion from TIPOUSUARIO;
select codigo_Curso, replace (codigo_Curso,'J1','JA') as Modificacion from CURSO;
*/

/*----------------------------------------------------------------------------------Consultas basicas--------------------------------------------------------------------------------*/

select * from Usuario;
/*Para visualizar registros de la tabla */
select * from CALIFICACION;
/*Para visualizar registros de la tabla */
select * from MATERIA;
/*Para visualizar registros de la tabla */
select * from USUARIOINASISTENCIA;
/*Para visualizar registros de la tabla */
select * from ASIGNACIONCARGA;
/*Para visualizar registros de la tabla */


/*----------------------------------------------------------------------------------consultas con where---------------------------------------------------------------------------------*/
select id_Salon AS ID, nombre_Salon AS Salon from Salon Where id_Salon<>1;
/*Para visualizar registros de la tabla con clausula where */

select fecha_Seguimiento as Fecha from SEGUIMIENTOCURSO where id_Seguimiento=2;
/*Para visualizar registros de la tabla con clausula where */

select fecha_Asignacion as Fecha from ASIGNACIONCARGA where id_Materia_FK>3;
/*Para visualizar registros de la tabla con clausula where */

select codigo_Curso as Curso from CURSO where id_Curso<>1;
/*Para visualizar registros de la tabla con clausula where */

select nombre_Materia as Materia, horasSemanales_Materia as Intensidad_Horaria from MATERIA where id_Materia>1;
/*Para visualizar registros de la tabla con clausula where */

select notaFinal1_Calificacion as Nota_Superior  from CALIFICACION where notaFinal1_Calificacion>45;
/*Para visualizar registros de la tabla con clausula where */

select fechaRegistro_Calificacion as Fecha  from USUARIOCALIFICACION where id_Calificacion_FK<>5;
/*Para visualizar registros de la tabla con clausula where */

select nombre_Cargo as Cargo  from CARGO where nombre_Cargo<>"Cordinador";
/*Para visualizar registros de la tabla con clausula where */

select id_Cargo_FK as ID  from CARGOUSUARIO where id_Usuario_FK<=3;
/*Para visualizar registros de la tabla con clausula where */

select id_Inasistencia as Codigo, excusa_Inasistencia  from INASISTENCIA where fecha_Inasistencia<="2020-03-10";
/*Para visualizar registros de la tabla con clausula where */

select id_Inasistencia_FK as ID from USUARIOINASISTENCIA where id_Usuario_FKF<=2;
/*Para visualizar registros de la tabla con clausula where */

select tipo_Falta, descripcion_Observacion from OBSERVACION where tipo_Falta="Grave";
/*Para visualizar registros de la tabla con clausula where */

select descargos_Usuario as Excusa from REGISTROOBSERVACION where id_Registro_Observacion>=2;
/*Para visualizar registros de la tabla con clausula where */

select user_usuario, password_Usuario from USUARIO where id_tipoUsuario_FK<>1;
/*Para visualizar registros de la tabla con clausula where */

select nombre_Tipo_Usuario from TIPOUSUARIO where id_tipoUsuario<>1;
/*Para visualizar registros de la tabla con clausula where */


/*----------------------------------------------------------------------------------Consultas con operadores logicos y relacionales------------------------------------------------------------------------------*/

select nombre_Tipo_Usuario from TIPOUSUARIO where id_tipoUsuario>1 and id_tipoUsuario<4;
/*Para visualizar registros de la tabla con clausula where y operador logico */

select nombre_Usuario as Nombre from USUARIO where id_Especialidad_FK=1 or id_Especialidad_FK=2;
/*Para visualizar registros de la tabla con clausula where y operador logico */

select id_Cargo_FK as ID  from CARGOUSUARIO where not  id_Usuario_FK<=3;
/*Para visualizar registros de la tabla con clausula where y operador logico */

select id_Inasistencia as Codigo, excusa_Inasistencia  from INASISTENCIA where fecha_Inasistencia>="2020-03-10";
/*Para visualizar registros de la tabla con clausula where y operador relacional */

select id_Inasistencia_FK as ID from USUARIOINASISTENCIA where id_Usuario_FKF<=4;
/*Para visualizar registros de la tabla con clausula where y operador relacional */

select tipo_Falta, descripcion_Observacion from OBSERVACION where tipo_Falta="Leve";
/*Para visualizar registros de la tabla con clausula where y operador relacional */

select notaFinal1_Calificacion as Nota_Alta  from CALIFICACION where notaFinal1_Calificacion between 39 and 46;
/*Para visualizar registros de la tabla con clausula where y operador relacional */


/*----------------------------------------------------------------------------------Consultas con columnas calculadas------------------------------------------------------------------------------*/

select  (notaPeriodo1_Calificacion+notaPeriodo2_Calificacion+notaPeriodo3_Calificacion+notaFinal1_Calificacion)/4 
as nota_Promedio from CALIFICACION;
select sum( (notaPeriodo1_Calificacion+notaPeriodo2_Calificacion+notaPeriodo3_Calificacion+notaFinal1_Calificacion)/4 )/5
as Promedio_Salon from CALIFICACION;
select sum(notaPeriodo1_Calificacion)/5 as Promedio_1Periodo_Salon from CALIFICACION;

/*----------------------------------------------------------------------------------Consultas con Funcion Like y Not Like-----------------------------------------------------------------------------*/

select nombre_Especialidad as Especialidad from ESPECIALIDAD where nombre_Especialidad Like 'A%';

select nombre_Especialidad as Especialidad from ESPECIALIDAD where nombre_Especialidad Like '%e';

select nombre_Especialidad as Especialidad from ESPECIALIDAD where nombre_Especialidad Not Like '%e%';

/*----------------------------------------------------------------------------------Consultas con la clausula having-----------------------------------------------------------------------------*/

select id_Usuario_FKF as ID_usuario,count(id_Usuario_FKF) as Fallas from USUARIOINASISTENCIA
 GROUP BY id_Usuario_FKF having count(id_Usuario_FKF)>2;
 /*Para contra cuantas fallas tiene cada estudiante y seleccionar aquellos que tenga mas de dos fallas*/

select tipo_Falta as Tipo,count(tipo_Falta) as Faltas from OBSERVACION
 GROUP BY tipo_Falta having count(tipo_Falta)<2;
/*Para contar numero de faltas por tipo y seleccionar las que solo se hallan cometido una vez*/
 
 select  (notaPeriodo1_Calificacion+notaPeriodo2_Calificacion+notaPeriodo3_Calificacion+notaFinal1_Calificacion)/4 
 as Promedio from CALIFICACION group by id_Calificacion having id_Calificacion>1;
 /*Para consultar los promedios de las calificaciones 2,3,4,5*/
 
  select  count(*) as Salones, ubicacion_Salon as Ubicacion from SALON group by ubicacion_Salon
  having ubicacion_Salon>"Piso 1";
  /*Para mostrar cuantos salones hay por piso*/
  
  select  count(*) as Profesores from USUARIO group by id_tipoUsuario_FK
  having id_tipoUsuario_FK=2;
  /*Para mostrar cuantos profesores hay*/
  
 select * FRom SALON;
 
 /*----------------------------------------------------------------------------------Consultas con la funcion GroupBy-----------------------------------------------------------------------------*/
 
select  count(*) as Salones, ubicacion_Salon as Ubicacion from SALON group by ubicacion_Salon;
select id_Usuario_FKF as ID_usuario,count(id_Usuario_FKF) as Fallas from USUARIOINASISTENCIA GROUP BY id_Usuario_FKF ;
select  count(*) as Profesores from USUARIO group by id_tipoUsuario_FK;
select tipo_Falta as Tipo,count(tipo_Falta) as Faltas from OBSERVACION GROUP BY tipo_Falta ;
select  (notaPeriodo1_Calificacion+notaPeriodo2_Calificacion+notaPeriodo3_Calificacion+notaFinal1_Calificacion)/4 as Promedio from CALIFICACION 
group by id_Calificacion;

/*----------------------------------------------------------------------------------Consultas con la funcion GroupBy-----------------------------------------------------------------------------*/

select nombre_Usuario, replace (nombre_Usuario,'Jorge','Santiago') as Modificacion from USUARIO;
select nombre_Usuario, replace (nombre_Usuario,'Jorge','Santiago') as Modificacion from USUARIO;
select nombre_Usuario, replace (nombre_Usuario,'Jorge','Santiago') as Modificacion from USUARIO;
select nombre_Usuario, replace (nombre_Usuario,'Jorge','Santiago') as Modificacion from USUARIO;
select nombre_Usuario, replace (nombre_Usuario,'Jorge','Santiago') as Modificacion from USUARIO;

/*----------------------------------------------------------------------------------Modificar algunos registros(update)-------------------------------------------------------------------------------*/

/*Update CURSO set codigo_Curso="JA" where id_Curso=1;*/
/*Para modificar un registro */

/*select * from CURSO;*/
/*Para visualizar registros de la tabla */

/*Update Usuario set nombre_Usuario="Andres" where id_Usuario=5;*/
/*Para modificar un registro */

select * from Usuario;
/*Para visualizar registros de la tabla */


/*Update MATERIA set nombre_Materia="Ciencias" where id_Materia=2;*/
/*Para modificar un registro */

select * from MATERIA;
/*Para visualizar registros de la tabla */

/*Update CALIFICACION set notaFinal1_Calificacion=50 where id_Calificacion=5;*/
/*Para modificar un registro */

select * from CALIFICACION;
/*Para visualizar registros de la tabla */

/*Update Usuario set nombre_Usuario="Humberto" where id_Usuario=2;*/
/*Para modificar un registro */

select * from Usuario;
/*Para visualizar registros de la tabla */

/*----------------------------------------------------------------------------------Eliminar registros (delete)-------------------------------------------------------------------------------*/
/*
delete from CARGOUSUARIO where id_Usuario_FK=2;
select * from CARGOUSUARIO;

delete from USUARIOINASISTENCIA where id_Inasistencia_FK=4;
select * from USUARIOINASISTENCIA;

delete from USUARIOCALIFICACION where id_Calificacion_FK=3;
select * from USUARIOCALIFICACION;

delete from SEGUIMIENTOCURSO where id_Seguimiento<>1;
select * from SEGUIMIENTOCURSO;

delete from ASIGNACIONCARGA where id_Asignacion<3;
select * from ASIGNACIONCARGA;
*/
/*----------------------------------------------------------------------------------Ordenar Registros (order by, asc, desc)-------------------------------------------------------------------------------*/

select id_Salon AS ID, nombre_Salon AS Salon from Salon order by nombre_Salon ASC;
/*Para visualizar registros de la tabla con funcion order by*/

select fecha_Seguimiento as Fecha from SEGUIMIENTOCURSO order by fecha_Seguimiento ASC;
/*Para visualizar registros de la tabla con funcion order by*/

select fecha_Asignacion as Fecha from ASIGNACIONCARGA order by fecha_Asignacion ASC;
/*Para visualizar registros de la tabla con funcion order by*/

select codigo_Curso as Curso from CURSO order by codigo_Curso ASC;
/*Para visualizar registros de la tabla con funcion order by*/

select nombre_Materia as Materia, horasSemanales_Materia as Intensidad_Horaria from MATERIA order by nombre_Materia ASC;
/*Para visualizar registros de la tabla con funcion order by*/

select notaFinal1_Calificacion as Nota_Superior  from CALIFICACION order by notaFinal1_Calificacion ASC;
/*Para visualizar registros de la tabla con funcion order by*/

select fechaRegistro_Calificacion as Fecha  from USUARIOCALIFICACION order by id_Usuario_FKFK ASC;
/*Para visualizar registros de la tabla con funcion order by*/

select nombre_Cargo as Cargo  from CARGO order by nombre_Cargo ASC;
/*Para visualizar registros de la tabla con funcion order by*/

select id_Cargo_FK as ID  from CARGOUSUARIO order by id_Usuario_FK ASC;
/*Para visualizar registros de la tabla con funcion order by*/

select id_Inasistencia as Codigo, excusa_Inasistencia  from INASISTENCIA order by fecha_Inasistencia ASC;
/*Para visualizar registros de la tabla con funcion order by*/

select id_Inasistencia_FK as ID from USUARIOINASISTENCIA order by id_Usuario_FKF ASC;
/*Para visualizar registros de la tabla con funcion order by*/

select tipo_Falta, descripcion_Observacion from OBSERVACION order by tipo_Falta ASC;
/*Para visualizar registros de la tabla con funcion order by*/

select descargos_Usuario as Excusa from REGISTROOBSERVACION order by descargos_Usuario ASC;
/*Para visualizar registros de la tabla con funcion order by*/

select nombre_Usuario as Nombre,user_usuario, password_Usuario from USUARIO order by nombre_Usuario ASC;
/*Para visualizar registros de la tabla con funcion order by*/

select nombre_Tipo_Usuario from TIPOUSUARIO order by nombre_Tipo_Usuario ASC;
/*Para visualizar registros de la tabla con funcion order by*/


/*--------------------------------------------------------------------------Consultas multitabla con INNER JOIN--------------------------------------------------------------------------------------------------*/

select nombre_Usuario as nombre, apellido_Usuario as Apellido, nombre_Tipo_Usuario as Tipo_Usuario, nombre_Especialidad as Especialidad,
fecha_Asignacion as Fecha_de_la_Asignacion
from Usuario
inner join TIPOUSUARIO on Usuario.id_tipoUsuario_FK=TIPOUSUARIO.id_tipoUsuario
inner join ESPECIALIDAD on Usuario.id_Especialidad_FK=ESPECIALIDAD.id_Especialidad
inner join ASIGNACIONCARGA on Usuario.id_Usuario=ASIGNACIONCARGA.id_Usuario_KFFK;

select nombre_Usuario as Usuario, apellido_Usuario as Apellido, estado_Usuario as Estado, descargos_Usuario as Descargos, fecha_Observacion as Fecha_de_Falta,
tipo_Falta as tipo, descripcion_Observacion as Descripcion
from Observacion
left join  REGISTROOBSERVACION ON Observacion.id_Observacion=REGISTROOBSERVACION.id_Observacion_FK
left join USUARIO on REGISTROOBSERVACION.id_Usuario_FKKK=Usuario.id_Usuario;


select nombre_Usuario as Usuario, apellido_Usuario as Apellido, fecha_Inasistencia, excusa_Inasistencia, id_Inasistencia
from INASISTENCIA
right join USUARIOINASISTENCIA on INASISTENCIA.id_Inasistencia=USUARIOINASISTENCIA.id_Inasistencia_FK
right join USUARIO on Usuario.id_Usuario=USUARIOINASISTENCIA.id_Usuario_FKF;

/*--------------------------------------------------------Creación de  vistas*----------------------------------------------------------------------*/

/*----Vista para mostrar el nombre completo del usuario, el tipo de usuario, la especialidad a la que pertenece, y la fecha de asignación de la misma*/

create view vUsuarioTipoEspecialidad as select CONCAT(nombre_Usuario, apellido_Usuario) as Nombres, nombre_Tipo_Usuario as Tipo_Usuario, nombre_Especialidad as Especialidad,
fecha_Asignacion as Fecha_de_la_Asignacion
from Usuario
inner join TIPOUSUARIO on Usuario.id_tipoUsuario_FK=TIPOUSUARIO.id_tipoUsuario
inner join ESPECIALIDAD on Usuario.id_Especialidad_FK=ESPECIALIDAD.id_Especialidad
inner join ASIGNACIONCARGA on Usuario.id_Usuario=ASIGNACIONCARGA.id_Usuario_KFFK;

Select * from vUsuarioTipoEspecialidad;


/*----crear vista para mostrar los nombres de usuario, el estado, los descargos, y el tipo, fecha y descripción de la las faltas*/
create view vUsuarioObservacion as select CONCAT(nombre_Usuario, apellido_Usuario) as Nombres, estado_Usuario as Estado, descargos_Usuario as Descargos, fecha_Observacion as Fecha_de_Falta,
tipo_Falta as tipo, descripcion_Observacion as Descripcion
from Observacion
left join  REGISTROOBSERVACION ON Observacion.id_Observacion=REGISTROOBSERVACION.id_Observacion_FK
left join USUARIO on REGISTROOBSERVACION.id_Usuario_FKKK=Usuario.id_Usuario;

select * from vUsuarioObservacion;

/*--------crear vista para mostrar los nombres, la fecha, excusa y ID de la inasistenca----------*/
create view vUsuarioInasistencia as select CONCAT( nombre_Usuario , apellido_Usuario) as Nombres, fecha_Inasistencia, excusa_Inasistencia, id_Inasistencia
from INASISTENCIA
right join USUARIOINASISTENCIA on INASISTENCIA.id_Inasistencia=USUARIOINASISTENCIA.id_Inasistencia_FK
right join USUARIO on Usuario.id_Usuario=USUARIOINASISTENCIA.id_Usuario_FKF;

Select * From vUsuarioInasistencia;

/*---crear vista sobre una consulta básica a  la tabla usuarios----*/
Create view vUsuarios as select * from Usuario;
select * from vUsuarios where id_Usuario>1;




/* crear vista para consultar los nombres de los estudiantes, el salon y curso al que pertenecen*/
create view vUsuarioSalonCurso as select Concat(nombre_Usuario, apellido_Usuario) as Nombres, nombre_Salon as Salón, codigo_Curso as Curso 
from Usuario  inner join seguimientocurso on seguimientocurso.id_Usuario_FKFKF=Usuario.id_Usuario
inner join Salon on Salon.id_Salon=seguimientocurso.id_Salon_FK
inner join Curso on Curso.id_Curso=seguimientocurso.id_Curso_FK ;

select * from vUsuarioSalonCurso;

/*-- crear vista parconsultar nombre y apellido del usuario , la fecha de registro de la calificación, 
la nota del periodo 3 calificación, la fecha de la asignacion y el nombre de la materia*/
create view V_UsuarioCalificacionMateria as select Concat(nombre_Usuario, apellido_Usuario) as Nombres, id_Calificacion as Codigo_Calificacion, 
fechaRegistro_Calificacion as Fecha_de_Calificacion, notaPeriodo3_Calificacion as Nota_3_Periodo, fecha_Asignacion , nombre_Materia as Materia 
from USUARIO
inner join USUARIOCALIFICACION on USUARIOCALIFICACION.id_Usuario_FKFK=USUARIO.id_Usuario
inner join CALIFICACION on CALIFICACION.id_Calificacion=USUARIOCALIFICACION.id_Calificacion_FK
inner join ASIGNACIONCARGA on ASIGNACIONCARGA.id_Usuario_KFFK=USUARIO.id_Usuario
inner join MATERIA on MATERIA.id_Materia=id_Materia_FK ;

select * from V_UsuarioCalificacionMateria;

/*---------------------------------------------------------------------Procedimientos de almacenado----------------------------------------------------------------------------------*/
/*-------Para insertar registros+---------*/
DELIMITER $$
CREATE PROCEDURE PA_Insertar_Usuario(P_user_Usuario varchar(50),P_password_Usuario varchar(8),P_nombre_Usuario varchar(50),
																			P_apellido_Usuario varchar(50),P_tipoDoc_Usuario varchar(50),P_doc_Usuario bigint(20),
																			P_estado_Usuario varchar(50),P_id_tipoUsuario_FK int(11),P_id_Especialidad_FK int(11))
BEGIN
insert into Usuario  (id_Usuario,user_Usuario,password_Usuario,nombre_Usuario,apellido_Usuario,
								tipoDoc_Usuario,doc_Usuario,estado_Usuario,id_tipoUsuario_FK,id_Especialidad_FK) 
								values ('',P_user_Usuario,P_password_Usuario,P_nombre_Usuario,P_apellido_Usuario,P_tipoDoc_Usuario,
												P_doc_Usuario,P_estado_Usuario,P_id_tipoUsuario_FK,P_id_Especialidad_FK);
END $$
DELIMITER ;

CALL PA_Insertar_Usuario('raulcito', 'raulcito123','Raúl','Rios','C.C.',9273472631,'activo',1,2);
SELECT * FROM USUARIO;

/*para consultar nombre, fecha y documento*/

DELIMITER $$
CREATE PROCEDURE PA_Consulta_Usuario(in P_id_Usuario int, out P_nombre_Usuario varchar (50), out P_Apellido_Usuario varchar(50),
																				out P_doc_Usuario bigint(20))
BEGIN 
SELECT  nombre_Usuario as Nombre ,apellido_Usuario as Apellido,doc_Usuario as Documento from Usuario where P_id_Usuario=id_Usuario;
END $$
DELIMITER ;

CALL PA_Consulta_Usuario(3,@P_nombre_Usuario,@P_Apellido_Usuario,@P_doc_Usuario);


/* Modificar Usuario*/

/*DELIMITER $$
CREATE PROCEDURE PA_modificar_Usuario(P_id_Usuario int,P_nombre_Usuario varchar(50),P_apellido_Usuario varchar(50))
BEGIN
UPDATE USUARIO SET nombre_Usuario=P_nombre_Usuario ,apellido_Usuario=P_apellido_Usuario where id_Usuario=P_id_Usuario;
SELECT * FROM USUARIO WHERE id_Usuario=P_id_Usuario;
END $$
DELIMITER ;

CALL PA_modificar_Usuario(3,'Lorena', 'Sanabria');
DELIMITER $$
CREATE PROCEDURE PA_modificar_EstadoUsuario(P_id_Usuario int,P_estado_Usuario varchar(50))
BEGIN
UPDATE USUARIO SET estado_Usuario=P_estado_Usuario  where id_Usuario=P_id_Usuario;
SELECT nombre_Usuario as Nombre, estado_Usuario as Estado FROM USUARIO WHERE id_Usuario=P_id_Usuario;
END $$
DELIMITER ;

CALL PA_modificar_EstadoUsuario(3,'Inactivo');**/

DELIMITER $$
create procedure Pa_modificar_Usuario (P_user_Usuario varchar(50), P_password_Usuario varchar(8),
P_nombre_Usuario varchar(50), P_apellido_Usuario varchar(50), P_tipoDoc_Usuario  varchar(50),
P_doc_Usuario bigint(20), P_id_Usuario int(11))
begin 
UPDATE Usuario SET
user_Usuario=P_user_Usuario,password_Usuario=P_password_Usuario,
nombre_Usuario=P_nombre_Usuario,
 apellido_Usuario=P_apellido_Usuario,tipoDoc_Usuario=P_tipoDoc_Usuario,doc_Usuario=P_doc_Usuario
where id_Usuario=P_id_Usuario;
end $$
DELIMITER 

DELIMITER $$
create procedure PA_Obtener ( P_id_Usuario int(11))
begin 
SELECT * FROM Usuario
where id_Usuario=P_id_Usuario;
end $$
DELIMITER 


DELIMITER $$
create procedure PA_Eliminar ( P_id_Usuario int(11))
begin 
UPDATE Usuario SET estado_Usuario='Inactivo'
where id_Usuario=P_id_Usuario;
end $$
DELIMITER 


DELIMITER $$
create procedure PA_Activar ( P_id_Usuario int(11))
begin 
UPDATE Usuario SET estado_Usuario='Activo'
where id_Usuario=P_id_Usuario;
end $$
DELIMITER 
describe calificacion;
describe inasistencia;

select * from usuario;

/* ----------------------------------------------------------------------------------------------------------------------------------
																		Taller TRIGGERS																
------------------------------------------------------------------------------------------------------------------------------------*/

/Crear tabla para hacer el primer punto/

/*--------------✓ Al registrar un empleado, cree el usuario automáticamente, concatenando dos iniciales del
 primer nombre y el apellido para el nombre de Usuario, para la contraseña utilizar la fecha nacimiento sin
 guiones y sin espacio.-------------*/

/*Create table EjemplosUsuarios(
name_User varchar(20),
password_User varchar(20)
);*/

DELIMITER $$
CREATE TRIGGER T_NamePassAut AFTER
INSERT ON USUARIO
FOR EACH ROW
BEGIN
/Como no tenemos fechas en la tabla usuario, utilizamos la hora de creacion del registro/
INSERT INTO EjemplosUsuarios VALUES  (CONCAT(LEFT(new.nombre_Usuario,2),new.apellido_Usuario), NOW() + 0);
END $$
DELIMITER ;

insert into Usuario  (user_Usuario,password_Usuario,nombre_Usuario,apellido_Usuario,tipoDoc_Usuario,doc_Usuario,estado_Usuario,id_tipoUsuario_FK,id_Especialidad_FK) 
		values ('Usuario','Contraseña','Camila','Arias','T.I.','1036558923','Activo',3,5);

select * from EjemplosUsuarios;

/*Registrar en una tabla log los cambios que se hagan en la contraseña del usuario, esta tabla log debe incluir:
• idTablaLog
• NombreUsuario
• ClaveAntigua
• ClaveNueva
• FechaCambio
*/

/*CREATE TABLE  UsuLog(
idTablaLog int(11) PRIMARY KEY AUTO_INCREMENT,
NombreUsuario varchar(20),
ClaveAntigua varchar(20),
ClaveNueva varchar(20),
FechaCambio DATE
);*/

DELIMITER $$
CREATE TRIGGER T_UsuLog
AFTER UPDATE ON USUARIO
FOR EACH ROW
BEGIN
INSERT INTO UsuLog Values('',old.nombre_Usuario, old.password_Usuario, new.password_Usuario,CURDATE());
END $$
DELIMITER ;
Update Usuario set password_Usuario="NuevaContraseña" where id_Usuario=5;
SELECT * FROM UsuLog;