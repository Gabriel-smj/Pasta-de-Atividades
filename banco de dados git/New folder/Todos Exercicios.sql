-- Exercicio 01

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


-- EXERCICIO 02

CREATE DATABASE olimpiadas;
USE olimpiadas;


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


-- Exercicio 03

CREATE DATABASE desenho;

USE desenho;

CREATE TABLE desenho (
idDesenho INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(50),
dtLancamento DATE,
emissora VARCHAR (50),
classificacao VARCHAR(30),
statuss VARCHAR (15),
nota INT CONSTRAINT chkstatus CHECK (nota in (1,2,3,4,5) )
)AUTO_INCREMENT = 10;

INSERT INTO desenho (titulo, dtLancamento, emissora, classificacao, statuss, nota) VALUES
('Pica-Pau', '1950-10-03', 'NBC', 'Livre', 'Encerrado', 5),
('Tom e Jerry', '1940-02-10', 'CBS', 'Livre', 'Encerrado', 4),
('Bob Esponja', '1999-05-01', 'Nickelodeon', '10+', 'Em exibição', 5);

SELECT * FROM desenho;
SELECT * FROM desenho WHERE classificacao <= 14;
SELECT * FROM desenho WHERE emissora = 'NBC';
ALTER TABLE desenho ADD CONSTRAINT chkdesenho CHECK(statuss in ('exibindo',
'finalizado', 'cancelado'));
UPDATE desenho SET statuss = 'finalizado' WHERE idDesenho in (10,11);
UPDATE desenho SET statuss = 'exibindo' WHERE idDesenho = 12;
DELETE FROM desenho WHERE idDesenho = 12;
SELECT * FROM desenho WHERE titulo LIKE 'T%';
ALTER TABLE desenho RENAME COLUMN classificacao TO classificacaoIndicativa;
DESC desenho;
UPDATE desenho SET nota = 5, dtLancamento = '2001-11-25' WHERE idDesenho = 1;
TRUNCATE TABLE desenho;
ALTER TABLE desenho DROP CONSTRAINT chkdesenho;


-- Exercicio 04

CREATE DATABASE estoque;

USE estoque;

CREATE TABLE misteriosSa (
idEstoque INT PRIMARY KEY,
nome VARCHAR (50),
dtCompra DATE, 
preco DECIMAL(10,2),
peso INT,
dtRetirada DATE
);

INSERT INTO misteriosSa (idEstoque, nome, dtCompra, preco, peso) VALUES
(1,'Biscoitos Scooby', '2025-05-01', 25.00, '500'),
(2,'Sucrilhos', '2024-11-05', 30.50, '300'),
(3,'Biscoitos Scooby', '2025-07-10', 26.00, '400'),
(4,'Pizza', '2024-12-15', 32.00, '350'),
(5,'Biscoitos Scooby', '2024-10-20', 27.50, '600');

SELECT * FROM misteriosSa;

SELECT nome, dtCompra, dtRetirada, idEstoque FROM misteriosSa ORDER BY dtCompra;

UPDATE misteriosSa SET dtRetirada = '2025-8-24' WHERE idEstoque = 5;

ALTER TABLE misteriosSa RENAME COLUMN idEstoque TO idComida;

ALTER TABLE misteriosSa ADD CONSTRAINT chkaliment CHECK (nome IN ('Biscoitos Scooby', 'Cachorro quente'));

UPDATE misteriosSa SET nome = 'Cachorro quente' WHERE idComida IN (2, 4);

SELECT nome AS 'Nome', dtCompra AS 'Data da Compra', dtRetirada AS 'Data da Retirada' FROM misteriosSa WHERE nome = 'Biscoitos Scooby';

SELECT * FROM misteriosSa WHERE dtCompra = '2024-07-25';

SELECT * FROM misteriosSa WHERE preco >= 30.50;

TRUNCATE TABLE misteriosSa;


-- Exercicio 05

CREATE DATABASE vingadores;

USE vingadores;

CREATE TABLE heroi (
idHeroi INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (45),
versao VARCHAR (45),
habilidade VARCHAR (50),
altura INT
);

 INSERT INTO heroi (nome, versao, habilidade, altura) VALUES
('Capitão América', 'Ultimato', 'Liderança estratégica', 188),
('Homem de Ferro', 'Guerra Civil', 'Tecnologia avançada', 185),
('Thor', 'Ragnarok', 'Controle do trovão', 198),
('Hulk', 'Era de Ultron', 'Força descomunal', 200),
('Viúva Negra', 'Soldado Invernal', 'Espionagem', 170);

SELECT * FROM heroi;

ALTER TABLE heroi ADD regeneracao BOOLEAN;

ALTER TABLE heroi MODIFY COLUMN versao VARCHAR(100);

DELETE FROM heroi WHERE idHeroi = 3;

INSERT INTO heroi (nome, versao, habilidade, altura) VALUES
('Pantera Negra', 'Guerra Infinita', 'Agilidade', 182);

SELECT * FROM heroi WHERE nome LIKE 'C%' OR nome LIKE 'H%';

SELECT * FROM heroi WHERE nome NOT LIKE '%A%';

SELECT nome FROM heroi WHERE altura > 190;

SELECT * FROM heroi WHERE altura > 180 ORDER BY nome DESC;

TRUNCATE TABLE heroi;









