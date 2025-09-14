
--                      EXERCÍCIO 1:

CREATE DATABASE sprint1;

USE sprint1;

CREATE TABLE atleta (
idAtleta INT PRIMARY KEY,
nome VARCHAR (40),
modalidade VARCHAR (40),
qtdMedalhas INT 
);

INSERT INTO atleta VALUES
(1, 'LUCAS', 'ATLETISMO', 5),
(2, 'RENAN', 'ATLETISMO', 8),
(3, 'RICARDO', 'NATAÇÃO', 7),
(4, 'CINTIA', 'JUDO', 6),
(5, 'GUILHERME', 'NATAÇÃO', 9),
(6, 'Luan', 'JUDO', 10);


UPDATE atleta SET qtdMedalhas = 7 WHERE idAtleta = 1;
UPDATE atleta SET qtdMedalhas = 3 WHERE idAtleta = 2;
UPDATE atleta SET qtdMedalhas = 5 WHERE idAtleta = 3;

-- estou fazendo da outra forma para aprender e praticar 
UPDATE atleta SET qtdMedalhas = 10 WHERE idAtleta IN (2,3);

UPDATE atleta SET nome = 'Luana' WHERE idAtleta = 4;
ALTER TABLE atleta ADD COLUMN dtNasc DATE;
UPDATE atleta SET dtNasc = '1988-10-20' WHERE idAtleta = 1;
UPDATE atleta SET dtNasc = '1999-07-21' WHERE idAtleta= 2;
UPDATE atleta SET dtNasc= '1991-08-17' WHERE idAtleta = 3;
UPDATE atleta SET dtNasc = '1995-02-10' WHERE idAtleta = 4;
UPDATE atleta SET dtNasc = '1989-03-09' WHERE idAtleta = 5;
UPDATE atleta SET dtNasc = '1999-06-01' WHERE idAtleta = 6;
DELETE FROM atleta WHERE idAtleta = 5;
SELECT * FROM atleta WHERE modalidade != 'NATAÇÃO';
SELECT * FROM atleta WHERE qtdMedalhas >= '3';
ALTER TABLE atleta MODIFY COLUMN modalidade VARCHAR(60);
DESCRIBE atleta;
DESC atleta;
TRUNCATE TABLE atleta;

--           EXERCÍCIO 2 

CREATE TABLE musica (
idMusica INT PRIMARY KEY,
titulo VARCHAR(40),
artista VARCHAR(40),
genero VARCHAR(40)
);

INSERT INTO musica VALUES
(1, 'Troublemaker', 'Hozho', 'Techno'),
(2, 'Honey Trap','Hozho','Techno'),
(3, 'Something Else', 'Hozho', 'Techno'),
(4, 'Time To Move On', 'Hozho', 'Techno'),
(5, 'Tears', 'Hozho', 'Techno'),
(6, 'Tudo de Bom', 'MC Livinho', 'Funk'),
(7, 'Fazer Falta', 'MC Livinho', 'Funk');


SELECT * FROM musica;
ALTER TABLE musica ADD COLUMN curtidas INT;
UPDATE musica SET curtidas = '50' WHERE idMusica = 1;
UPDATE musica SET curtidas = '800' WHERE idMusica = 2;
UPDATE musica SET curtidas = '1000' WHERE idMusica = 3;
UPDATE musica SET curtidas = '2000' WHERE idMusica = 4;
UPDATE musica SET curtidas = '7000' WHERE idMusica = 5;
UPDATE musica SET curtidas = '20' WHERE idMusica = 6;
UPDATE musica SET curtidas = '10' WHERE idMusica = 7;
ALTER TABLE musica MODIFY COLUMN artista VARCHAR(80);
UPDATE musica SET curtidas = '500' WHERE idMusica = 1;
UPDATE musica SET curtidas = '900' WHERE idMusica = 2;
UPDATE musica SET curtidas = '1200' WHERE idMusica = 3;

-- estou fazendo da outra forma para aprender e praticar/ SÓ FOI UM TESTE!
UPDATE musica SET curtidas = '1.300' WHERE idMusica IN (2,3);

UPDATE musica SET titulo = 'Paradise Circus' WHERE idMusica = 5;
DELETE FROM musica WHERE idMusica = 4;
SELECT * FROM musica WHERE genero != 'FUNK';
SELECT * FROM musica WHERE curtidas >= '20';
DESC musica;
TRUNCATE TABLE musica;


--   EXERCÍCIO 3
CREATE TABLE filmes (
idFilmes INT PRIMARY KEY,
titulo VARCHAR(50),
genero VARCHAR(40),
diretor VARCHAR(40)
);

INSERT INTO filmes VALUES 
(1, 'Batman Begins', 'Ação', 'Christopher Nolan'),
(2, 'The Dark Knight','Ação','Christopher Nolan'),
(3, 'Inception','Ação','Christopher Nolan'),
(4, 'Tenet','Ação','Christopher Nolan'),
(5, 'The Color Purple', 'Drama', 'Steven Spielberg'),
(6, 'Fight Club', 'Suspense', 'David Fincher'),
(7, 'The Game', 'Suspense', 'David Fincher');

SELECT * FROM filmes;
ALTER TABLE filmes ADD COLUMN protagonista VARCHAR(50);
UPDATE filmes SET protagonista = 'lucas' WHERE idFilmes = 1;
UPDATE filmes SET protagonista = 'joão' WHERE idFilmes = 2;
UPDATE filmes SET protagonista = 'douglas' WHERE idFilmes = 3;
UPDATE filmes SET protagonista = 'luan' WHERE idFilmes =4;
UPDATE filmes SET protagonista = 'ricardo' WHERE idFilmes = 5;
UPDATE filmes SET protagonista = 'richard' WHERE idFilmes = 6;
UPDATE filmes SET protagonista = 'daniel' WHERE idFilmes = 7;
ALTER TABLE filmes MODIFY COLUMN diretor VARCHAR (150);
UPDATE filmes SET diretor = 'taylor lautner' WHERE idFilmes = 5;
UPDATE filmes SET diretor = 'cristen coleman' WHERE idFilmes = 2;
UPDATE filmes SET diretor = 'bruce bulem' WHERE idFilmes = 7;
UPDATE filmes SET titulo = 'clube do box' WHERE idFilmes = 6;
DELETE FROM filmes WHERE idFilmes = 3;
SELECT * FROM filmes WHERE genero <> 'Drama';
SELECT * FROM filmes WHERE genero = 'Suspense';
DESCRIBE filmes;
TRUNCATE TABLE filmes;


--       EXERCÍCIO 4
CREATE TABLE professor (
idProfessor INT PRIMARY KEY,
nome VARCHAR(50),
especialidade VARCHAR(40),
dtNasc DATE
);

INSERT INTO professor VALUES 
(1, 'Luan','Matematica','1992-07-09'),
(2, 'Josue','Historia','1995-03-20'),
(3,'Monica','Geografia','1989-05-29'),
(4,'Rhian','Filosofia','1991-09-12'),
(5,'Graziele','Biologia','1993-04-15'),
(6,'Marli','Fisica','1985-08-07');

SELECT * FROM professor;
ALTER TABLE professor ADD COLUMN funcao VARCHAR(50);
UPDATE professor SET funcao = 'monitor' WHERE idProfessor = 1;
UPDATE professor SET funcao = 'titular' WHERE idProfessor = 2;
UPDATE professor SET funcao = 'assistente' WHERE idProfessor = 3;
UPDATE professor SET funcao = 'monitor' WHERE idProfessor = 4;
UPDATE professor SET funcao = 'titular' WHERE idProfessor = 5;
UPDATE professor SET funcao = 'assistente' WHERE idProfessor = 6;

INSERT INTO professor VALUES
(7, 'joão','Algoritmo','1996-08-29', 'titular');

DELETE FROM professor WHERE idProfessor = 5;
SELECT * FROM professor WHERE funcao = 'titular';
SELECT especialidade, dtNasc FROM professor WHERE funcao = 'monitor';
UPDATE professor SET dtNasc = '2000-10-01' WHERE idProfessor = 3;
SELECT * FROM professor;
TRUNCATE TABLE professor;

--           EXERCÍCIO 5

CREATE TABLE curso (
idCurso INT PRIMARY KEY,
nome VARCHAR (50),
sigla varchar(3),
coordenador VARCHAR (40)
);

INSERT INTO curso VALUES 
(1,'python','bta','alexandre'),
(2,'administracao','uni','leandro'),
(3, 'javascrip','clm','cintia');

SELECT * FROM curso;
SELECT coordenador FROM curso;
SELECT * FROM curso WHERE sigla = 'clm';
SELECT * FROM curso ORDER BY nome;
SELECT * FROM curso ORDER BY coordenador DESC;
SELECT * FROM curso WHERE nome LIKE 'a%';
SELECT * FROM curso WHERE nome LIKE '%p';
SELECT * FROM curso WHERE nome LIKE '_y%';
SELECT * FROM curso WHERE nome LIKE '%i_';	
DROP TABLE curso;


--           EXERCÍCIO 6 

CREATE TABLE revista (
idRevista INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (40),
categoria VARCHAR(30)
);

INSERT INTO revista (nome, categoria)VALUES
('veja', ''),
('isto é', ''),
('epoca', ''),
('quatro rodas', '');

SELECT * FROM revista;

UPDATE revista SET categoria = 'atualidades' WHERE idRevista = 1;
UPDATE revista SET categoria = 'politica' WHERE idRevista = 2;
UPDATE revista SET categoria = 'noticias' WHERE idRevista = 3;
UPDATE revista SET categoria = 'automoveis' WHERE idRevista = 4;

SELECT * FROM revista;

INSERT INTO revista (nome, categoria) VALUES 
('culinaria', 'doces'),
('animes', 'sololeveling'),
('boticario', 'perfumes');

SELECT * FROM revista;
DESC revista;
ALTER TABLE revista MODIFY COLUMN categoria VARCHAR(40);
DESC revista;
ALTER TABLE revista ADD COLUMN periodicidade VARCHAR(15);
SELECT * FROM revista;
ALTER TABLE revista DROP COLUMN periodicidade;


--           EXERCÍCIO 7

CREATE TABLE Carro (
idCarro INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (40),
placa VARCHAR (7)
)AUTO_INCREMENT = 1000;

INSERT INTO Carro (nome, placa) VALUES
('Honda Civic', 'QWE4B29'),
('Chevrolet Onix', 'MTR8K51'),
('Toyota Corolla', 'ZXP1J73'),
('Ford Ranger','BLV9A62'),
('Volkswagen Gol','KJD7P84');

SELECT * FROM Carro;

INSERT INTO Carro (nome)VALUES
('Nissan Sentra'),
('Jeep Compass'),
('Renault Sandero');

SELECT * FROM Carro;
DESCRIBE Carro;
ALTER TABLE Carro MODIFY COLUMN nome VARCHAR (28);
DESC Carro;
ALTER TABLE Carro ADD COLUMN ano VARCHAR (4);
UPDATE Carro SET ano = '2005' WHERE idCarro = 1000;
UPDATE carro SET ano = '2015' WHERE idCarro = 1001;
UPDATE carro SET ano = '2012' WHERE idCarro = 1002;
UPDATE carro SET ano = '2018' WHERE idCarro = 1003;
UPDATE carro SET ano = '2022' WHERE idCarro = 1004;
UPDATE Carro SET ano = '2000', placa = 'RKT2M59' WHERE idCARRO = 1005;
UPDATE carro SET ano = '2010', placa = 'LHQ8A21' WHERE idCarro = 1006;
UPDATE carro SET ano = '2017', placa = 'VJN5C83' WHERE idCarro = 1007;