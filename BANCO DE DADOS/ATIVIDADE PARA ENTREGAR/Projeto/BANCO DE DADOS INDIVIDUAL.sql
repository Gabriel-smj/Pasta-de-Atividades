CREATE DATABASE muniztech;

USE muniztech;

CREATE TABLE empresa (
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40) NOT NULL,
cnpj VARCHAR(20),
logradouro VARCHAR(40) NOT NULL,
contato INT, 
email VARCHAR(40),
formadepagamento VARCHAR(40),
qtfuncionarios INT
);

CREATE TABLE sensor (
idSensor INT PRIMARY KEY AUTO_INCREMENT,
tipo VARCHAR(40),
temperatura INT,
umidade INT,
horaEdata DATETIME DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE serviço (
idServico INT PRIMARY KEY AUTO_INCREMENT,
tipos VARCHAR (30),
dataEhora DATETIME DEFAULT CURRENT_TIMESTAMP,
locall VARCHAR (40)
); 

CREATE TABLE material (
idMaterial INT PRIMARY KEY AUTO_INCREMENT,
ferramentas VARCHAR(40),
compras VARCHAR(50),
descarte VARCHAR(50)
);



