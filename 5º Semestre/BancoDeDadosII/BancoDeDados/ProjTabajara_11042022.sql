create database tabajara;
use tabajara;

CREATE TABLE Prestador (
idPrestador int PRIMARY KEY	not null auto_increment,
Nome varchar(100)	not null,
Telefone varchar(11)	not null,
Email varchar(100)	not null,
CNPJ varchar(14)	not null unique
);

select * from Prestador;

CREATE TABLE Venda (
idVenda int PRIMARY KEY	not null auto_increment,
DataVenda date,
idCliente int
);
update venda set idvenda=3 where idvenda=15;
select * from Venda;

CREATE TABLE Servicos (
idServicos int PRIMARY KEY	not null auto_increment,
Descricao varchar(1000)	not null,
Nome varchar(100)	not null
);

select * from Servicos;

CREATE TABLE Cliente (
idCliente int PRIMARY KEY not null auto_increment,
Nome varchar(100)	not null,
Email varchar(100)	not null,
Telefone varchar(11)	not null,
CPF varchar(11)	not null unique,
);

select * from Cliente;

CREATE TABLE PrestadorServico (
idServicos int,
idPrestador int,
FOREIGN KEY(idServicos) REFERENCES Servicos (idServicos),
FOREIGN KEY(idPrestador) REFERENCES Prestador (idPrestador)
);

select * from PrestadorServico;

insert into prestadorservico (idprestador, idservicos) values (1,2);
insert into prestadorservico (idprestador, idservicos) values (1,3);
insert into prestadorservico (idprestador, idservicos) values (2,1);
insert into prestadorservico (idprestador, idservicos) values (2,2);
insert into prestadorservico (idprestador, idservicos) values (3,3);

CREATE TABLE ServicosNotaFiscal (
ValorServico float	not null,
idServicos int,
idVenda int,
FOREIGN KEY(idServicos) REFERENCES Servicos (idServicos),
FOREIGN KEY(idVenda) REFERENCES Venda (idVenda)
);

select * from ServicosNotaFiscal;

insert into ServicosNotaFiscal (Valorservico, idServicos, idVenda) values (2350, 1, 1);
insert into ServicosNotaFiscal (valorservico, idservicos, idvenda) values (4890, 2, 1);
insert into ServicosNotaFiscal (valorservico, idservicos, idvenda) values (6220, 2, 2);

ALTER TABLE Venda ADD FOREIGN KEY(idCliente) REFERENCES Cliente (idCliente);



/*
	1- Consulta que retorna o nome todos os clientes que ja fizeram uma compra.
*/

select distinct nome
from cliente, venda
where cliente.idcliente = venda.idcliente;




/*
	2- Retorna a quantidade de todos os serviços realizados agrupados por serviço.
*/

select idservicos, count(idservicos)
from servicosnotafiscal
group by idservicos;



/*
	3- Cliente que não realizar nenhuma compra.
*/

select nome
from cliente
where idcliente not in
(select idcliente
from venda);


/*
	4-Total de vendas por nota fiscal.
*/

select sum(valorservico)
from servicosnotafiscal
group by idvenda;


/*
	5-Crie uma consulta que retorna a comissão da 
		empresa de Serviços sabendo-se que a mesma cobra 30% de 
        todos os serviços realizados.
*/

select sum(ValorServico) * 0.3
from servicosnotafiscal;




/*
	6-Criar uma nova versão da consulta anterior que considera 
		uma coluna para o valor da comissão a outra coluna 
        para o valor liquido a ser pago.
*/

select sum(ValorServico) * 0.3 as 'Comissão', sum(ValorServico) * 0.70 as 'Prestadores'
from servicosnotafiscal;



/*
	7-Criar uma consulta que mostra para cada prestador a seguinte saida:
    Nome do Prestador/ Total Serviços/ Desconto Comissão/ valor a receber
*/

select  prestador.nome as 'Nomes', sum(ValorServico) as 'Total Serviços', sum(ValorServico) * 0.3 as 'Comissão', sum(ValorServico) * 0.70 as 'Prestadores'
from prestador, prestadorservico, servicos, servicosnotafiscal
where prestadorservico.idprestador = prestador.idPrestador
and servicosnotafiscal.idServicos = prestador.idPrestador
group by prestador.nome;



alter table venda (idPrestador);



