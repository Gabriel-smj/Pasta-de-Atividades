-- Essa é uma tabela chamada atleta 
--                      EXERCÍCIO 1:

CREATE DATABASE sprint1;
-- Selecionar ou Utilizar ou usar o BD
USE sprint1;
-- CRIAÇÃO DA TABELA ATLETA
CREATE TABLE ATLETA (
idAtleta INT PRIMARY KEY,
nome VARCHAR (40),
modalidade VARCHAR (40),
qtdMedalhas INT 
);
-- Inserir dados na tabela, procurando colocar mais de um atleta para cada modalidade
INSERT INTO ATLETA VALUES
(1, 'LUCAS', 'ATLETISMO', 5),
(2, 'RENAN', 'ATLETISMO', 8),
(3, 'RICARDO', 'ATLETISMO', 7),
(4, 'CINTIA', 'JUDO', 6),
(5, 'GUILHERME', 'JUDO', 9),
(6, 'TADEU', 'JUDO', 10),
(7, 'LARISA', 'CICLISMO', 4),
(8, 'CAMILA', 'CICLISMO', 7),
(9, 'JULIA', 'CICLISMO', 9),
(10, 'LUAN', 'KARATE', 3),
(11, 'CAMILA', 'KARATE', 2),
(12, 'RUBENS', 'KARATE', 4),
(13, 'LEONARDO', 'SURF', 5),
(14, 'RICHARD', 'SURF', 10),
(15, 'MAURO', 'SURF', 6);


-- Exibir todos os dados da tabela
SELECT idAtleta, nome, modalidade, qtdMedalhas FROM atleta;

--  Exibir apenas os nomes e quantidade de medalhas dos atletas
SELECT nome, qtdMedalhas FROM atleta;

-- Exibir apenas os dados dos atletas de uma determinada modalidade
SELECT * FROM ATLETA WHERE modalidade = 'JUDO';

-- Exibir os dados da tabela ordenados pela modalidade.
SELECT * FROM atleta ORDER BY modalidade;

--  Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente
SELECT * FROM atleta ORDER BY qtdMedalhas DESC;

--  Exibir os dados da tabela, dos atletas cujo nome contenha a letra s
SELECT * FROM atleta WHERE nome LIKE '%S%';

-- Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra
SELECT * FROM atleta WHERE nome LIKE '%a%';

-- Exibir os dados da tabela, dos atletas cujo nome termine com a letra o
SELECT * FROM atleta WHERE nome LIKE '%o';

--  Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r
SELECT * FROM ATLETA WHERE nome LIKE '%r_';

-- Eliminar a tabela
DROP TABLE ATLETA;

--           EXERCÍCIO 2 

CREATE TABLE Musica (
idMUSICA INT PRIMARY KEY,
titulo VARCHAR(40),
artista VARCHAR(40),
genero VARCHAR(40)
);

INSERT INTO Musica VALUES
(1, 'Believe', 'Eli Brown', 'Techno'),
(2, 'Horney Trap','Hozho','Minimal Techno'),
(3, 'Mindhunter', 'Florian Meindl', 'Acid Techno'),
(4, 'Looking 4 Balance', 'Regal', 'Hard Techno'),
(5, 'From the Inside', 'Linkin Park', 'Rock'),
(6, 'The Death Of Me', 'Asking Alexandria', 'Rock'),
(7, 'Telephone', 'Lady gaga', 'Pop');

/*Execute os comandos
 Exibir todos os dados da tabela
*/
SELECT idMUSICA, titulo, artista, genero FROM Musica;

--  Exibir apenas os títulos e os artistas das músicas.
SELECT titulo, artista FROM Musica;

-- Exibir apenas os dados das músicas de um determinado gênero
SELECT * FROM Musica WHERE genero = 'Techno';

--  Exibir apenas os dados das músicas de um determinado artista
SELECT * FROM Musica WHERE artista = 'Hozho';

-- Exibir os dados da tabela ordenados pelo título da música
SELECT * FROM Musica ORDER BY titulo;

-- Exibir os dados da tabela ordenados pelo artista em ordem decrescente
SELECT * FROM Musica ORDER BY artista DESC;

-- Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra
SELECT * FROM Musica WHERE titulo LIKE 'T%';

-- Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra
SELECT * FROM Musica WHERE artista LIKE '%l';

/* Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma
determinada letra*/
SELECT * FROM Musica WHERE genero LIKE '_O%';

/*Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma
determinada letra */
SELECT * FROM Musica WHERE titulo LIKE '%a_';

--    Elimine a tabela
DROP TABLE Musica;

--   EXERCÍCIO 3
CREATE TABLE FILMES (
idFILMES INT PRIMARY KEY,
titulo VARCHAR(50),
genero VARCHAR(40),
diretor VARCHAR(40)
);

INSERT INTO FILMES VALUES 
(1, 'O Cavaleiro das Trevas', 'Ação', 'Christopher Nolan'),
(2, 'Mulher Maravilha','Aventura','Patty Jenkins'),
(3, 'O Homem de Aço','Ficção científica','Zack Snyder'),
(4, 'Liga da Justiça','Aventura','Zack Snyder'),
(5, 'Coringa', 'Thriller e Crime', 'Todd Phillips'),
(6, 'O Esquadrão Suicida', 'Ação e Comédia', 'James Gunn'),
(7, ' Aquaman', 'Aventura', 'James Wan');

--  Exibir todos os dados da tabela
SELECT * FROM FILMES;

--  Exibir apenas os títulos e os diretores dos filmes
SELECT titulo, diretor FROM FILMES;

-- Exibir apenas os dados dos filmes de um determinado gênero
SELECT * FROM FILMES WHERE genero = 'Aventura';

-- Exibir apenas os dados dos filmes de um determinado diretor
SELECT * FROM FILMES WHERE diretor = 'Zack Snyder';

-- Exibir os dados da tabela ordenados pelo título do filme
SELECT * FROM FILMES ORDER BY titulo;

-- Exibir os dados da tabela ordenados pelo diretor em ordem decrescente
SELECT * FROM FILMES ORDER BY diretor DESC;

--  Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra
SELECT * FROM FILMES WHERE titulo LIKE 'O%';

--  Exibir os dados da tabela, dos filmes cujo diretor termine com uma determinada letra
 SELECT * FROM FILMES WHERE diretor LIKE '%n';
 
 /*Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma
determinada letra*/
SELECT * FROM FILMES WHERE genero LIKE '_V%';

/*Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma
determinada letra*/
SELECT * FROM FILMES WHERE titulo LIKE '%a_';

DROP TABLE FILMES;

--       EXERCÍCIO 4

CREATE TABLE PROFESSOR (
idProfessor INT PRIMARY KEY,
nome VARCHAR(50),
especialidade VARCHAR(40),
dtNasc DATE
);

INSERT INTO PROFESSOR VALUES 
(1, 'Ricardo', 'Matematica', '1989-11-2'),
(2, 'Luan', 'Ingles', '1990-09-10'),
(3, 'Eduarda', 'Historia', '1988-07-20'),
(4, 'Larissa', 'Ingles', '1992-05-18'),
(5, 'Rainy', 'Geografia', '1987-04-14'),
(6, 'Ana', 'Ingles', '1982-12-5');

SELECT * FROM PROFESSOR;
SELECT especialidade FROM PROFESSOR;
SELECT * FROM PROFESSOR WHERE especialidade = 'Ingles';
SELECT * FROM PROFESSOR ORDER BY nome;
SELECT * FROM PROFESSOR ORDER BY dtNasc DESC;
SELECT * FROM PROFESSOR WHERE nome LIKE 'L%';
SELECT * FROM PROFESSOR WHERE nome LIKE '%A';
SELECT * FROM PROFESSOR WHERE nome LIKE '_A%';
SELECT * FROM PROFESSOR WHERE nome LIKE '%D_';

DROP TABLE PROFESSOR;


--           EXERCÍCIO 5

CREATE TABLE JOGO (
idJogo INT PRIMARY KEY,
nome VARCHAR(50),
comentario VARCHAR(200),
ranking INT
);

INSERT INTO JOGO VALUES 
(1, 'Clair Obscur: Expedition 33', ' Um jogo que tem recebido muitos elogios por sua 
atmosfera e narrativa envolvente.', '1'),
(2, 'Blue Prince', 'Destaca-se pela sua jogabilidade inovadora e gráficos de alta qualidade.', '2'),
(3, 'Kingdom Come: Deliverance 2', ' Continua a saga medieval com um toque realista e uma história cativante.', '3'),
(4, 'Split Fiction', 'Um jogo que promete trazer uma experiência de jogo única e desafiadora.', '4'),
(5, 'Death Stranding 2: On The Beach', 'A sequência do aclamado jogo de Hideo Kojima traz novas 
mecânicas e uma história intrigante. ', '5'),
(6, 'Minecraft', ' o jogador explora um mundo aberto, coleta recursos, constrói estruturas
 e interage com criaturas e outros jogadores', '6');

SELECT nome, comentario, ranking FROM JOGO;
SELECT nome FROM JOGO;
SELECT comentario FROM JOGO WHERE nome ='Blue Prince';
SELECT * FROM JOGO ORDER BY nome;
SELECT * FROM JOGO ORDER BY ranking DESC;
SELECT * FROM JOGO WHERE nome LIKE 'k%';
SELECT * FROM JOGO WHERE nome LIKE '%n';
SELECT * FROM JOGO WHERE nome LIKE '_l%';
SELECT * FROM JOGO WHERE nome LIKE '%o_';
SELECT * FROM JOGO WHERE nome != 'Minecraft';

DROP TABLE JOGO;
