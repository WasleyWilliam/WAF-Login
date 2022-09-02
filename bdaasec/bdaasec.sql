--	Comentários
--	a linha abaixo cria um banco de dados 	
create database dbaasec;
--	a linha abaixo escolhe o banco de dados a ser utilizado
use dbaasec
--	o comando abaixo descreve a tabela
--	a linha abaixo insere dados na tabela (CRUD)
--	create -> insert
insert into tbusuarios(iduser,usuario,contato,login,senha)
values(3,'Ariadne Arci','31992174660','fabio','123456');
-- a linha abaixo exibe os dados da tabela (CRUD)
--	read -> select
-- a linha abaixo modifica dados na tabela (CRUD)
-- update - > update
update tbclientes set fonecli='31/34354425' where idcli=2;
-- a linha abaixo apaga um registro da tabela (CRUD)
-- delete ->
delete from tbusuarios where iduser=3;
select * from tbclientes;
select * from tbusuarios;

create table tbclientes2(
idcli int primary key auto_increment, 
nomecli varchar(50) not null, 
cpfcli varchar(50),
endcli varchar(100), 
fonecli varchar(50) not null, 
emailcli varchar(50),
convcli varchar(50)
);

insert into tbclientes(nomecli,endcli,fonecli,emailcli)
values('Wasley William','Estrela Dalva,56' ,'31992174660','fabio@gmail.com');
use dbaasec
create table tbconsultas(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
nomemed varchar(100) not null, 
dtconsulta varchar(11) not null,
hrconsulta varchar(11) not null,
convenio varchar(50),
localcons varchar(150) not null,
obs varchar(400), 
idcli int not null,
foreign key(idcli) references tbclientes(idcli)

);

describe tbconsultas

insert into tbconsultas (nomemed,dtconsulta,hrconsulta,convenio,localcons,obs,idcli)
values ('Carlos','25/08/2022','08:00','unimed','aymores, 750','',1)

select * from tbconsultas;

-- o código abaixo traz informações de duas tabelas
select 
O.os,nomemed,dtconsulta,hrconsulta,convenio,localcons,obs,
C.nomecli,fonecli,emailcli
from tbconsultas as O
inner join tbclientes as C
on(O.idcli=c.idcli)


select * from tbusuarios;
select * from tbusuarios where login='admin' and senha='admin'

















