-- AULA 3

USE sprint1;

SHOW TABLES;

-- CRIAR A TABELA CADASTRO DO ALUNO DE ACADEMIA
CREATE TABLE cadastro (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
peso DECIMAL(5,2),
altura FLOAT,
plano VARCHAR(40),
CONSTRAINT chkPlano 
	CHECK(plano IN ('Mensal', 'Semanal', 'Avulso')),
dtCadastro DATETIME DEFAULT current_timestamp
);

/*
NÚMEROS DECIMAIS
FLOAT - 7 CARACTERES 3456.789
DOUBLE - 15 CARACTERES 8765432345678.90
DECIMAL() - 32 CARACTERES
	PESO - 999.99
    DECIMAL(5,2): 123.45
    DECIMAL(6,3): 234.567
*/

INSERT INTO cadastro (nome, peso, altura, plano) VALUES
	('Dexter', 90.50, 1.67, 'Mensal'),
	('Damon', 72.50, 1.90, 'Avulso'),
	('Dean', 81.30, 1.78, 'Mensal'),
	('Blair', 49.10, 1.42, 'Semanal'),
	('Walter', 88.40, 1.81, 'Avulso');
    
SELECT * FROM cadastro;

-- EXIBIÇÃO DE DADOS
SELECT nome, peso, altura FROM cadastro;

-- ALIAS
SELECT nome AS NomeAluno FROM cadastro;
SELECT nome AS 'Nome do Aluno' FROM cadastro;

SELECT nome as 'Nome do Aluno',
	peso as 'Peso do Aluno',
	altura as 'Altura em metros',
    plano as 'Plano de Pagamento',
    dtCadastro as 'Data do Cadastro no sistema'
    FROM cadastro;

-- CRIAR FRASES
-- CONCATENAR
-- CONCAT
SELECT CONCAT(nome, plano) FROM cadastro;
SELECT CONCAT(nome, ' ', plano) FROM cadastro;
SELECT CONCAT(nome, ' ', plano) as 'Plano de Pagamento do aluno'
	FROM cadastro;
SELECT CONCAT('O aluno ', nome, 
' escolheu o plano de pagamento ', plano, '!') 
	as 'Plano de Pagamento do aluno'
		FROM cadastro;


-- IF ELSE
-- CASE
SELECT nome, 
	CASE
    WHEN plano = 'Mensal' THEN '30 DIAS'
    WHEN plano = 'Semanal' THEN '7 DIAS'
    WHEN plano = 'Avulso' THEN '1 DIA'
    ELSE 'sem plano'
    END AS 'Plano de pagamento'
    FROM cadastro;
    
INSERT INTO cadastro (nome, plano) VALUES
	('Barbie', null);

SELECT nome, 
	CASE
    WHEN plano = 'Mensal' THEN 'Plano Mensal'
    ELSE 'plano não mensal'
    END AS 'Plano de pagamento'
    FROM cadastro;

UPDATE cadastro SET nome = 'Dexter Lindo'
	WHERE id = 1;

SELECT * FROM cadastro;

UPDATE cadastro SET nome =  
	CASE
	WHEN nome = 'Damon' THEN 'Damon Feio'
    WHEN nome = 'Blair' THEN 'Blair da Hora'
    end
	WHERE id IN (2,4);

 