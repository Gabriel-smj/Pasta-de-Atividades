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

