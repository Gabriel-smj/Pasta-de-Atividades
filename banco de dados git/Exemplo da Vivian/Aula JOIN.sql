-- Sprint 2
-- Aula 5

CREATE DATABASE sprint2;
USE sprint2;

CREATE TABLE responsavel (
idResponsavel int primary key auto_increment,
nome varchar(45)) auto_increment = 5000;

INSERT INTO responsavel (nome) VALUES
	('Yasmin'),
	('Wilian'),
	('Ariel');
    
SELECT * FROM responsavel;

CREATE TABLE empresa (
idEmpresa int primary key auto_increment,
nome varchar(45),
fkResponsavel int unique, -- relacionamento 1:1
constraint fkEmpresaResponsavel 
	foreign key (fkResponsavel) 
		references responsavel(idResponsavel)
);

INSERT INTO empresa (nome, fkResponsavel) VALUES
	('Accenture', 5001),
	('Minsait', 5000),
	('Stefanini', 5002);
    
SELECT * FROM empresa;

-- junção em 2 tabelas
-- inner join
-- join

-- Exibir as empresas e seus respectivos responsáveis
SELECT * FROM empresa JOIN responsavel
	ON idResponsavel = fkResponsavel;

SELECT empresa.nome as NomeEmpresa,
	responsavel.nome as NomeResponsavel
    FROM empresa JOIN responsavel
    ON idResponsavel = fkResponsavel;

SELECT e.nome as 'Empresa inha',
	r.nome as Responsa
    FROM empresa as e
    JOIN responsavel as r
    ON idResponsavel = fkResponsavel;

CREATE TABLE aluno (
ra char(8) primary key,
nome varchar(45),
email varchar(45) unique,
fkEmpresa int,
constraint fkAlunoEmpresa
	foreign key (fkEmpresa)
		references empresa(idEmpresa)
);

INSERT INTO aluno VALUES
	('01252888', 'Chowder', 'chowder@email.com', 1), 
	('01252887', 'Ben 10', 'ben10@email.com', 1), 
	('01252886', 'Flap Jack', 'flapjack@email.com', 2), 
	('01252885', 'Rick', 'rick@email.com', 3);
    
SELECT * FROM aluno JOIN empresa
	ON idEmpresa = fkEmpresa;
    
SELECT * FROM aluno JOIN empresa
	ON idEmpresa = fkEmpresa
    JOIN responsavel
    ON idResponsavel = fkResponsavel;
    
SELECT empresa.nome as Empresa,
	responsavel.nome as Responsavel,
    aluno.nome as Aluno
    FROM empresa JOIN responsavel
    ON idResponsavel = fkResponsavel
    JOIN aluno
    ON idEmpresa = fkEmpresa;

SELECT empresa.nome as Empresa,
	responsavel.nome as Responsavel,
    aluno.nome as Aluno
    FROM empresa JOIN responsavel
    ON idResponsavel = fkResponsavel
    JOIN aluno
    ON idEmpresa = fkEmpresa
    WHERE empresa.nome = 'Stefanini';