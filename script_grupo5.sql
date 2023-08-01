create database Grupo5
use Grupo5

create table ticket_encabezado
(
id int primary key identity(1,1),
fecha_inicio datetime,
fecha_cierre datetime,
asunto varchar(100),
prioridad int,
estado int foreign key references ticket_estado(id),
solicitante int foreign key references usuario(id),
asignado int foreign key references tipo_usuario(id),
descripcion varchar(200),
)

create table fecha_ingreso
(
id int primary key identity(1,1),
ticket_fecha datetime,
descripcion varchar(100),
costo decimal(10,2)
)

create table enseñanza
(
id int primary key identity(1,1),
ticket_fecha datetime,
usuario int foreign key references usuario(id),
pregunta varchar(200),
respuesta varchar(200)
)

create table ticket_estado
(
id int primary key identity(1,1),
nombre varchar(50)
)

create table tipo_usuario
(
id int primary key identity(1,1),
nombre varchar(50)
)

create table usuario
(
id int primary key identity(1,1),
nombre_usuario varchar(50),
contraseña varchar(20),
departamento int,
correo varchar(30),
tipo_usuario int foreign key references tipo_usuario(id)
)
