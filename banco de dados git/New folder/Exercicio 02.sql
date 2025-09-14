CREATE DATABASE olimpiadas;
USE olimpiadas;
-- EXERCICIO 02

CREATE TABLE esportes (
idEsportes INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40),
categoria VARCHAR (20),
CONSTRAINT chkcategoria CHECK(categoria IN ('Individual', 'Coletivo')),
numero_jogadores INT,
estreia DATE,
pais VARCHAR (30)
);

INSERT INTO esportes (nome, categoria, numero_jogadores, estreia, pais) VALUES
('Futebol', 'Coletivo', 11, '1900-10-01', 'Inglaterra'),
('Atletismo', 'Individual', 1, '1896-04-06', 'Grécia'),
('Basquete', 'Coletivo', 5, '1936-08-07', 'Estados Unidos'),
('Judô', 'Individual', 1, '1964-10-10', 'Japão'),
('Handebol', 'Coletivo', 7, '1936-08-06', 'Alemanha');

ALTER TABLE esportes ADD COLUMN popularidade INT CHECK (popularidade IN (1,2,3,4,5,6,7,8,9,10));
UPDATE esportes SET popularidade = '9' WHERE idEsportes = 1;
UPDATE esportes SET popularidade = '7' WHERE idEsportes = 2;
UPDATE esportes SET popularidade = '4' WHERE idEsportes = 3;
UPDATE esportes SET popularidade = '10' WHERE idEsportes = 4;
UPDATE esportes SET popularidade = '8' WHERE idEsportes = 5;

SELECT * FROM esportes ORDER BY popularidade;
UPDATE esportes SET estreia = '2005-01-01' WHERE idEsportes = 2;
SELECT * FROM esportes WHERE estreia >= '2000-01-01';

ALTER TABLE esportes ADD CONSTRAINT chkestreia CHECK (estreia >= '1896-04-06' AND estreia <= '2025-08-24');

ALTER TABLE esportes MODIFY COLUMN categoria VARCHAR (30);

SELECT * FROM esportes WHERE pais LIKE '_a%';

SELECT * FROM esportes WHERE numero_jogadores in (4,5,6,7,8,9,10,11);

DELETE FROM esportes WHERE idEsportes IN (1,3,5);








