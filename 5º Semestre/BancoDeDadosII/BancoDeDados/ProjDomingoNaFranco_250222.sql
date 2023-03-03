create database DomingoNaFranco;

use DomingoNaFranco;



CREATE TABLE Colaboradores (
idColaboradores int PRIMARY KEY	not null auto_increment,
RA int,
CPF varchar(11)	not null,
Nome varchar(100)	not null,
idAtracoes int	not null
);

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

ALTER TABLE Colaboradores ADD FOREIGN KEY(idAtracoes) REFERENCES Atracoes (idAtracoes);
ALTER TABLE Atracoes ADD FOREIGN KEY(idCategoria) REFERENCES Categoria (idCategoria);
ALTER TABLE Veiculo ADD FOREIGN KEY(idEstacionamento) REFERENCES Estacionamento (idEstacionamento);






































