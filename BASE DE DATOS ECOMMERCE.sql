DROP DATABASE IF EXISTS grupo6;
CREATE DATABASE IF NOT EXISTS grupo6;
USE grupo6;
CREATE TABLE usuarios(
id int PRIMARY KEY AUTO_INCREMENT,
nombre varchar(40) not null,
apellido varchar(40) not null,
email varchar (30) not null,
pass varchar (30) not null,
domicilio varchar (50),
ciudad varchar (50),
pais varchar (30),
cp varchar (6) not null
);
