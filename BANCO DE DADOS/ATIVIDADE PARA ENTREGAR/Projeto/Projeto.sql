CREATE DATABASE sustentatech;
USE sustentatech;

create table empresa(
	IdEmpresa int primary key auto_increment,
    NomeEmpresa varchar(40),
    ResponsavelLegal varchar(50),
    Cnpj char(14),
    Localidade varchar(50)
);

CREATE TABLE usuario (
IdCliente INT PRIMARY KEY AUTO_INCREMENT,
Email VARCHAR (60),
senha VARCHAR (40),
cargo VARCHAR(40),
telefone int
);

create table recursos(
	idRecurosos int primary key auto_increment,
    qtdSilo int,
    qtdSensor int
);

create table sensor(
	idSensor int primary key auto_increment,
    temperaura float,
    umidade float,
    dtHora datetime default current_timestamp
);

INSERT INTO empresa (NomeEmpresa,ResponsavelLegal,CNPJ,Localidade) values
	('SPAgro','Davi Vital','')




