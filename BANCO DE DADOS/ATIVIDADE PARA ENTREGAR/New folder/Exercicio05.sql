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




