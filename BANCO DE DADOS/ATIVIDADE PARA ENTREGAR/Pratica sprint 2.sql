use sprint2;

create table pessoa (
idPessoa int primary key,
nome varchar(45),
cpf char(11));

insert into pessoa values
(1,'Lucas','86787602065'),
(2,'Luan','99591903073'),
(3,'Davi','92850032069'),
(4,'Matheus','87608871091'),
(5,'Vitoria','00486534030');

select * from pessoa;

create table Reserva (
idReserva int primary key,
dtReserva datetime,
dtRetirada datetime, 
dtDevolucao datetime,
fkPessoa int unique,
constraint fkReservaPessoa
foreign key (fkPessoa)
references pessoa(idPessoa)
);


insert into Reserva values
(1, '2025-03-09 13:10:00', '2025-04-09 10:00:00', '2025-04-25 22:30:00', '1'),
(2, '2025-02-06 16:10:47', '2025-02-07 06:28:21', '2025-02-12 09:32:48', '2'),
(3, '2025-01-25 00:12:20', '2025-02-01 21:16:28', '2025-02-12 02:39:30', '3'),
(4, '2025-07-14 01:47:13', '2025-08-02 10:42:33', '2025-08-25 07:19:03', '4'),
(5, '2025-02-07 08:25:10', '2025-03-03 00:58:37', '2025-03-16 10:38:11', '5');


select * from Reserva;

SELECT * FROM Reserva JOIN pessoa
	ON idPessoa = fkPessoa;
    
SELECT pessoa.nome as Nome,
pessoa.cpf as CPF,
pessoa.idPessoa as IndentificaçãoPessoa,
Reserva.idReserva as IndentificaçãoReserva,
Reserva.dtReserva as Reserva,
Reserva.dtRetirada as Retirada,
Reserva.dtDevolucao as Devolução
FROM Reserva JOIN pessoa
ON idPessoa = fkPessoa;

UPDATE pessoa SET nome = 
CASE
WHEN nome = 'Lucas' THEN 'Fernanda'
WHEN nome = 'Davi' THEN 'David'
WHEN nome = 'Matheus' THEN 'Nathan'
END 
WHERE idPessoa IN (1, 3, 4);

-- ATIVIDADE 2 

CREATE TABLE Pessoa1 (
idPessoa1 INT PRIMARY KEY,
nome VARCHAR(45), 
dtNascimento DATE);

INSERT INTO Pessoa1 VALUES 
(1, 'Lucia', '1999-09-07'),
(2, 'Marcia', '2000-09-05'),
(3, 'Marcos', '2001-04-21'),
(4, 'James', '2005-06-09'),
(5, 'Guilherme', '2002-11-22');

SELECT * FROM Pessoa1;

CREATE TABLE Pessoa2 (
idPessoa2 INT PRIMARY KEY,
nome VARCHAR(45),
dtNascimento DATE,
fkPessoa1 INT UNIQUE,
CONSTRAINT fkPessoa1Pessoa2
	FOREIGN KEY (fkPessoa1)
		REFERENCES Pessoa1(idPessoa1));
        
INSERT INTO Pessoa2 VALUES
(1, 'Luan', '2000-01-02', '1'),
(2, 'Boni', '2000-03-09', '2'),
(3, 'Stefany', '2000-06-08', '3'),
(4, 'Helen', '2000-05-07', '4'),
(5, 'Harley', '2000-08-07', '5');

SELECT * FROM Pessoa2;

SELECT Pessoa1.idPessoa1 AS Indentificador1,
Pessoa1.nome AS Nome,
Pessoa1.dtNascimento AS DataNascimento1,
Pessoa2.nome AS Nome,
Pessoa2.dtNascimento AS DataNascimento2,
Pessoa2.fkPessoa1 AS Indentificador2
FROM Pessoa2 JOIN Pessoa1
ON idPessoa1 = fkPessoa1;

SELECT dtNascimento AS DataNascimento,
CASE 
WHEN nome = 'Boni' THEN 'Roberta'
WHEN nome = 'Helen' THEN 'Helena'
WHEN nome = 'Luan' THEN 'Luna'
WHEN nome = 'Stefany' THEN 'Stefan'
ELSE 'Sem Nome'
END AS Nome
FROM Pessoa2;

-- ATIVIDADE 3 

