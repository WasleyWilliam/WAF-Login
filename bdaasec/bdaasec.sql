//Código abaixo seleciona um banco de dados específico
use dbaasec  

//Código abaixo Exibe  propriedades de uma tabela (Colunas)
describe tbusuarios;

//Código abaixo exibe os usuários cadastrados em uma tabela
select* from tbusuarios;

//O comando Abaixo vai criar mais um campo em uma tabela 
alter table tbusuarios add column perfil varchar(20) not null; 

//O comando Abaixo vai remover um campo em uma tabela 
alter table tbusuarios drop column perfil varchar(20) not null; 

//A linha abaixo ira incluir um no campo perfil um administrador da tabela
update tbusuarios set perfil = 'user' where iduser=4;

select* from tbclientes;
describe tbclientes;

//O comando Abaixo vai criar mais um campo em uma tabela 
alter table tbclientes add column cpf varchar(14) not null;
alter table tbclientes add column nome varchar(50) not null;
alter table tbclientes add column dtnascimento varchar(10) not null;
alter table tbclientes add column idade varchar(3) not null;
alter table tbclientes add column tel1 varchar(12) not null;
alter table tbclientes add column tel2 varchar(12) not null;
alter table tbclientes add column convenio varchar(50) not null;
alter table tbclientes add column email varchar(50) not null;
alter table tbclientes add column cep varchar(9) not null;
alter table tbclientes add column rua varchar(150) not null;
alter table tbclientes add column numero varchar(6) not null;
alter table tbclientes add column bairro varchar(100) not null;
alter table tbclientes add column cidade varchar(50) not null;
alter table tbclientes add column estado varchar(2) not null;
alter table tbclientes add column obs varchar(450) not null;
 //Fim do comando criar colunas

//O comando Abaixo vai remover um campo em uma tabela 
alter table tbclientes drop column nomecli; 
alter table tbclientes drop column endcli; 
alter table tbclientes drop column fonecli; 
alter table tbclientes drop column emailcli; 
alter table tbclientes drop column convenio;
alter table tbclientes drop column datanasc;  
alter table tbclientes drop column idade; 
alter table tbclientes drop column fonealternativo; 
//Fim Comandos deletar Colunas










