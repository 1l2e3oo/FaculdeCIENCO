/*-------------------------------------------------------------------------------------------------------------------------------------------------------------------------



												Prova Banco de Dados II

												Leonardo Faria Araujo


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

use lojacarros;

/*

3-)

*/
DELIMITER $
create trigger trg_AunDaIDaFSA before insert on anuncio for each row
begin
	set new.dataInicio=now();
	set new.dataFim=date_add(new.dataInicio, interval 1 month);
    set new.idStatus=(2);

end;
$

/*----------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
select*from anuncio;
/*

4-)

*/

INSERT INTO Anuncio (idAnuncio, idCliente, idCidade, idVeiculo) 
VALUES (11, 9, 9125, 1);

INSERT INTO Anuncio (idAnuncio, idCliente, idCidade, idVeiculo) 
VALUES (12, 4, 9126, 1);


/*----------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/


/*

5-)

*/

create table loganuncio(
idloganuncio int primary key auto_increment,
idCliente int,
idVeiculo int,
DataMovimento date,
idAnuncio int,
Descricao varchar(100)
);


create trigger trgloginanuncio after insert on anuncio for each row
insert into loganuncio (idCliente,idVeiculo,idAnuncio,DataMovimento,Descricao) values (new.idCliente,new.idVeiculo,new.idAnuncio,now(),'Registro Inserido');


create trigger trglogupanuncio after update on anuncio for each row
insert into loganuncio (idCliente,idVeiculo,idAnuncio,DataMovimento,Descricao) values (new.idCliente,new.idVeiculo,new.idAnuncio,now(),'Registro Alterado');







/*----------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/



/*

6-)

*/

select*from loganuncio;

INSERT INTO Anuncio (idAnuncio, idCliente, idCidade, idVeiculo) 
VALUES (13, 4, 9125, 8);

INSERT INTO Anuncio (idAnuncio, idCliente, idCidade, idVeiculo) 
VALUES (14, 3, 9125, 1);


/*----------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*

7-)

*/


create trigger trglogidelnuncio after delete on anuncio for each row
insert into loganuncio (idCliente,idVeiculo,idAnuncio,DataMovimento,Descricao) values (old.idCliente,old.idVeiculo,old.idAnuncio,now(),'Registro Deletado');



/*----------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/*

8-)

*/


delete from anuncio
where idAnuncio=13;

delete from anuncio
where idAnuncio=14;





