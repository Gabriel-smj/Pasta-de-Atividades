CREATE DATABASE sprint2;
USE sprint2;

CREATE TABLE atleta (
idAtleta INT PRIMARY KEY,
nome VARCHAR(40),
modalidade VARCHAR(40),
qtdMedalhas INT);

INSERT INTO atleta VALUES
(1, 'Lukario', 'Atletismo', '9'),
(2, 'Caldeon', 'Natação', '12'),
(3, 'Leticia', 'Judo', '16'),
(4, 'Luke', 'Box', '10'),
(5, 'Melissa', 'Ginastica', '20');

CREATE TABLE País (
idPaís INT PRIMARY KEY,
nome VARCHAR(30),
capital VARCHAR(40));

INSERT INTO País VALUE
(1, 'Brasil', 'Brasília'),
(2, 'Estados Unidos', 'Washington'),
(1, 'Espanha', 'Madri'),
(1, 'França', 'Paris');

