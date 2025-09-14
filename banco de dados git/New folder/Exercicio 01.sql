CREATE DATABASE game_store;

USE game_store;
-- Exercicio 01
CREATE TABLE jogos (
idJogos INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(30),
diretor VARCHAR(30),
genero VARCHAR(30),
lancamento DATE,
nota INT,
quantidade INT
);

INSERT INTO jogos (nome, diretor, genero, lancamento, nota, quantidade) VALUES 
('God Of War','Cory Barlog','Aventura','2018-04-20','10','100'),
('The Last Of Us','Bruce Straley','Ação','2013-06-14','10','80'),
('Diablo IV','Gavian Whishaw','RPG','2023-06-05','10','200'),
('Shadow Of Mordor','Michael de Plater','Aventura','2014-09-30','10','150'),
('Shadow Of War','Mike de Plater','RPG','2017-10-10','10','50');

ALTER TABLE jogos ADD COLUMN tipo VARCHAR(30);
UPDATE jogos SET tipo = 'Digital' WHERE idJogos = 1;
UPDATE jogos SET tipo = 'Digital' WHERE idJogos = 2;
UPDATE jogos SET tipo = 'Digital' WHERE idJogos = 3;
UPDATE jogos SET tipo = 'Fisico' WHERE idJogos = 4;
UPDATE jogos SET tipo = 'Fisico' WHERE idJogos = 5;

SELECT * FROM jogos WHERE lancamento >='2015-01-01';
SELECT * FROM jogos WHERE nome like '%a%' AND tipo = 'Fisico';
SELECT * FROM jogos WHERE diretor NOT LIKE '%e%';
ALTER TABLE jogos ADD CONSTRAINT chknota check (nota in ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10'));
UPDATE jogos SET quantidade = '0' WHERE idJogos in (4, 5);
SELECT * FROM jogos WHERE genero = 'aventura' AND quantidade > 0;
DELETE FROM jogos WHERE idJogos in(4,5);
ALTER TABLE jogos RENAME COLUMN diretor TO criador;
SELECT * FROM jogos;


