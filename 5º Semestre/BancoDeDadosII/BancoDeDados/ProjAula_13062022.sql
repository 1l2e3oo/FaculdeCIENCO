/*	Criar uma tabele de nome Aluno com os campos (atributos) id e nome. o id deve ser auto increment */

create database Aula;
use Aula;

CREATE TABLE Aluno(
id int PRIMARY KEY not null auto_increment,
nome varchar(100)
);

insert into Aluno (nome) values ('Maria');
insert into Aluno (nome) values ('Joana');
insert into Aluno (nome) values ('Renata');
insert into Aluno (nome) values ('Carlos');
insert into Aluno (nome) values ('Marcelo');
insert into Aluno (nome) values ('Rosana');
insert into Aluno (nome) values ('Sabrina');
insert into Aluno (nome) values ('Josefa');
insert into Aluno (nome) values ('Roberta');
insert into Aluno (nome) values ('Luciana');


select * from aluno where nome='Rosana';
explain select * from Aluno where nome='Rosana';


create index idxnome on Aluno (nome);
drop index idxnome on Aluno;





create table curso(
idCurso int PRIMARY KEY not null auto_increment ,
nomeCurso varchar(100) not null,
cargohoraria int,
valorbase decimal(10,2),
valorpromocional decimal(10,2)
);


select * from curso;


create trigger trgPromo before insert on curso for each row
set new.valorpromocional=(new.valorbase*0.5);


insert into curso (nomecurso, cargohoraria, valorbase)
values ('Redes', 80, 5000.00);

update curso set valorbase = 4000.00;


create trigger trgPromo2 before update on curso for each row
set new.valorpromocional=(new.valorbase*0.50);



create table logcurso(
id int primary key auto_increment,
descricao varchar(100),
idcurso int
);

insert into curso (nomecurso, cargohoraria, valorbase)
values ('WebDev', 50, 3000.00);

insert into curso (nomecurso, cargohoraria, valorbase)
values ('Magica', 20, 1000.00);


create trigger trglog after insert on curso for each row
insert into logcurso (descricao,idcurso) values ('Novo Curso', new.idcurso);

create trigger trglogup after update on curso for each row
insert into logcurso (descricao,idcurso) values ('Alteração de Curso', new.idcurso);

create trigger trglogdel after delete on curso for each row
insert into logcurso (descricao,idcurso) values ('Curso Deletado', old.idcurso);


select * from logcurso;

delete








