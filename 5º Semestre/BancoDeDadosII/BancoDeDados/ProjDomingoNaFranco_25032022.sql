create database DomingoNaFranco;

use DomingoNaFranco;



CREATE TABLE Colaboradores (
idColaboradores int PRIMARY KEY	not null auto_increment,
RA int,
CPF varchar(11)	not null,
Nome varchar(100)	not null,
idAtracoes int	not null
);
alter table Colaboradores
modify CPF varchar(100) not null unique


CREATE TABLE Localizacao (
idLocalizacao int PRIMARY KEY not null auto_increment,
horario varchar(100)	not null,
Nome varchar(100)	not null
);

CREATE TABLE Atracoes (
Nome varchar(100)	not null,
idAtracoes int PRIMARY KEY	not null auto_increment,
idLocalizacao int	not null,
idCategoria int	not null,
FOREIGN KEY(idLocalizacao) REFERENCES Localizacao (idLocalizacao)
);

CREATE TABLE Categoria (
Nome varchar(100)	not null,
idCategoria int PRIMARY KEY	not null auto_increment
);

CREATE TABLE Visitantes (
idVisitantes int PRIMARY KEY	not null auto_increment,
Idade int	not null,
Nome varchar(100)	not null,
CPF varchar(11)	not null
);
alter table visitantes
modify CPF varchar(100) not null unique

CREATE TABLE Veiculo (
IdVeiculo int PRIMARY KEY	not null auto_increment,
Cor varchar(100)	not null,
Modelo varchar(100)	not null,
Placa varchar(10)	not null,
idVisitantes int	not null,
idEstacionamento int	not null,
FOREIGN KEY(idVisitantes) REFERENCES Visitantes (idVisitantes)
);

CREATE TABLE Estacionamento (
idEstacionamento int PRIMARY KEY	not null auto_increment,
Nome varchar(100)	not null
);

CREATE TABLE Visitas (
idVisitas int PRIMARY KEY	not null auto_increment,
idAtracoes int	not null,
idVisitantes int	not null,
FOREIGN KEY(idAtracoes) REFERENCES Atracoes (idAtracoes),
FOREIGN KEY(idVisitantes) REFERENCES Visitantes (idVisitantes)
);
alter table Visitas 
auto_increment=1

ALTER TABLE Colaboradores ADD FOREIGN KEY(idAtracoes) REFERENCES Atracoes (idAtracoes);
ALTER TABLE Atracoes ADD FOREIGN KEY(idCategoria) REFERENCES Categoria (idCategoria);
ALTER TABLE Veiculo ADD FOREIGN KEY(idEstacionamento) REFERENCES Estacionamento (idEstacionamento);

INSERT INTO Estacionamento (Nome)
values("Setor A"), ("Setor B"), ("Setor C"), ("Setor D");

INSERT INTO Visitantes (Nome, CPF, Idade)
values("Adriano Alvez","15694858642",85),
("Roberto Gomes","34373962855",34),
("Fernando Souza","18299423872",22),
("Luiz Henrique","06050952809",40),
("José da Silva","09719871814",18),
("Gustavo Alberto","63314157851",25),
("Mauro Nunes","93813550885",30);

INSERT INTO Localizacao (Nome, horario)
values("BLOCO A","Dia Inteiro"),
("BLOCO B","Dia Inteiro"),
("BLOCO C","Dia Inteiro"),
("BLOCO D","11:00"),
("BLOCO D","14:00"),
("BLOCO D","16:00");


INSERT INTO Categoria (Nome)
values("Alimentação"),
("Show"),
("Loja");


INSERT INTO Veiculo (Placa, Modelo, Cor, idVisitantes, idEstacionamento)
values("ENA7841","Corola","Preto",3,1),
("EWJ0834","Fox","Branco",4,2),
("ELX7955","Fusion","Vermelho",1,2),
("ECE5965","Onix","Prata",5,3),
("FXD6218","Prisma","Branco",2,1);

INSERT INTO Atracoes (Nome, idLocalizacao, idCategoria)
values("Pastel",2,1),
("Cachorro Quente",1,1),
("Bebidas",1,1),
("Camisetas",3,3),
("Rock Mob",4,2),
("Raça Negra",5,2),
("Fernando e Sorocaba",6,2);

INSERT INTO Colaboradores (Nome, CPF,idAtracoes)
VALUES 
("Fernando","46343646892",7),
("Sorocaba","45095888874",7),
("Luiz Carlos","02391881878",6),
("Marcos André","46938997802",5),
("Arthur Martins","24793872832",2),
("William Vitor","21008129801",1);

select * from visitantes

select * from visitas

select * from Atracoes

INSERT INTO Visitas (idAtracoes, idVisitantes)
VALUES (1,2);
INSERT INTO Visitas (idAtracoes, idVisitantes)
values(1,5); 
INSERT INTO Visitas (idAtracoes, idVisitantes)
values (2,1),
(2,7),
(3,4);
INSERT INTO Visitas (idAtracoes, idVisitantes)
values (4,1),
(4,6),
(4,5),
(5,4),
(5,3),
(6,7),
(6,5);
INSERT INTO Visitas (idAtracoes, idVisitantes)
values
(7,1);
INSERT INTO Visitas (idAtracoes, idVisitantes)
values
(7,2),
(7,7);


delete from Visitas;

show tables


/*1-) Atração com o maior número de visitas*/
CREATE OR REPLACE VIEW MaxVisitas AS 
SELECT A.idAtracoes, A.Nome, COUNT(V.idAtracoes) TotalVisitas FROM atracoes A, visitas V
WHERE V.idAtracoes = A.idAtracoes
GROUP BY V.idAtracoes
ORDER BY TotalVisitas DESC;


SELECT * FROM MaxVisitas
WHERE TotalVisitas = (SELECT MAX(TotalVisitas) FROM MaxVisitas);



/*2-) Atração com o menor número de visitas*/
DESC Atracoes;

CREATE OR REPLACE VIEW MaxVisitas AS 
SELECT A.idAtracoes, A.Nome, COUNT(V.idAtracoes) TotalVisitas FROM atracoes A, visitas V
WHERE V.idAtracoes = A.idAtracoes
GROUP BY V.idAtracoes
ORDER BY TotalVisitas DESC;


SELECT * FROM MaxVisitas
WHERE TotalVisitas = (SELECT MIN(TotalVisitas) FROM MaxVisitas);




















