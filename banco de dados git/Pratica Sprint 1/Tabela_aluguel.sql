CREATE DATABASE aluguel;

use aluguel;

create table cliente (
id_alguel int primary key auto_increment,
nome varchar (30),
sobrenome varchar(30),
data_inicio date,
data_fim date,
valor_aluguel int
);

insert into cliente(nome, sobrenome, data_inicio, data_fim, valor_aluguel) values
('João', 'Silva', '2025-08-01', '2025-08-05', '1000.00'),
('Maria', 'Oliveira', '2025-08-20', '2025-08-25', '1200.00'),
('Pedro', 'Souza', '2025-08-22', '2025-08-24', '800.00');

select * from cliente;
alter table cliente modify column valor_aluguel decimal(10,2);
desc cliente;
select concat(nome ,' ', sobrenome) as Cliente, concat(valor_aluguel) as Aluguel, 
	case 
    when statuss = 'finalizado' then 'Concluído' 
    when statuss = 'em_andamento' then 'Em andamento'
    else 'Cancelado'
    end as Situação
from cliente order by nome;

alter table cliente add column statuss varchar(20);
alter table cliente add constraint chkstatuss check(statuss in('finalizado','em_andamento','cancelado'));
alter table cliente rename column id_alguel to id_aluguel;
update cliente set statuss = 'finalizado' where id_aluguel = 1;
update cliente set statuss = 'em_andamento' where id_aluguel = 2;
update cliente set statuss = 'cancelado' where id_aluguel = 3;
alter table cliente drop constraint chkstatuss;
