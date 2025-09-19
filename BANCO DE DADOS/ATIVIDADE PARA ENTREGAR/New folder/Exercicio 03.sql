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
