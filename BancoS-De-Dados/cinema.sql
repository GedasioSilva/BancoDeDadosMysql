create database if not exists Cinema
default charset = "utf8"
default collate utf8_general_ci;

create table if not exists tb_filme(
id_filme smallint auto_increment primary key,
nome_filme varchar(60) not null,
data_lancamento date not null
)default charset = "utf8";

select * from tb_filme;

create table if not exists tb_diretor(
id_diretor smallint auto_increment primary key,
nome_Diretor varchar(60) not null,
data_nasc_diretor date not null,
sexo_Diretor enum('M','F') not null
)default charset = "utf8";

insert into tb_diretor (nome_diretor,data_nasc_diretor,sexo_diretor) values ("Tarantino",'1963-03-17',"M");
insert into tb_diretor (nome_diretor,data_nasc_diretor,sexo_diretor) values ("James Cameron",'1954-08-16',"M");
insert into tb_diretor (nome_diretor,data_nasc_diretor,sexo_diretor) values ("Joanne Jo Rowling",'1965-06-31',"F");
insert into tb_diretor (nome_diretor,data_nasc_diretor,sexo_diretor) values ("John Ronald Reuel Tolkien",'1892-01-03',"M");
insert into tb_diretor (nome_diretor,data_nasc_diretor,sexo_diretor) values ("George Raymond Richard Martin",'1948-09-20',"F");
select * from tb_diretor;

update tb_diretor set data_nasc_diretor ='1963-03-17' where id_diretor = 6;
/* adicionando uma data na tabela diretor*/


create table if not exists tb_Ator(
id_ator smallint auto_increment primary key,
nome_ator varchar(60) not null,
data_nasc_ator date not null
)default charset = "utf8";

insert into tb_ator (nome_ator,data_nasc_ator) values ("Eric Marlon Bishop",'1967-06-11');
insert into tb_ator (nome_ator,data_nasc_ator) values ("Samuel Henry John 'Sam'",'1976-08-02');
insert into tb_ator (nome_ator,data_nasc_ator) values ("Daniel Jacob Radcliffe",'1989-06-23');
insert into tb_ator (nome_ator,data_nasc_ator) values ("Elijah Jordan Wood",'1981-01-28');
insert into tb_ator (nome_ator,data_nasc_ator) values ("Peter Hayden Dinklage",'1969-06-11');


/* adicionando chave Estrangeira

alter table tb_filme
add id_ator smallint;

alter table tb_filme 
add constraint fk_id_ator 
foreign key (id_ator)
references tb_ator (id_ator);
*/

/* adicionando chave Estrangeira
alter table tb_sala 
add id_funcionario  smallint;

alter table tb_sala 
add constraint fk_id_funcionario
foreign key (id_funcionario)
references tb_funcionario (id_funcionario);
*/

create table if not exists tb_sala(
id_sala smallint primary key auto_increment,
nome_sala varchar(60) not null,
capacidade_sala smallint not null,
tema_sala varchar(60) not null
)default charset = "utf8";

create table if not exists tb_Funcionario(
id_funcionario  smallint primary key auto_increment,
nome_funcionario varchar(60) not null,
cargo_funcionario varchar(60) not null,
data_nasc_funcionario date not null,
sexo_funcionario enum('M','F') not null
)default charset = "utf8";

insert into tb_funcionario (nome_funcionario,cargo_funcionario,data_nasc_funcionario,sexo_funcionario) values ("Gedasio","Inspetor",'1995-12-17',"M");
insert into tb_funcionario (nome_funcionario,cargo_funcionario,data_nasc_funcionario,sexo_funcionario) values ("Camila","Caixa",'1991-12-19',"F");
insert into tb_funcionario (nome_funcionario,cargo_funcionario,data_nasc_funcionario,sexo_funcionario) values ("Diana","Fiscal",'2018-02-11',"F");
insert into tb_funcionario (nome_funcionario,cargo_funcionario,data_nasc_funcionario,sexo_funcionario) values ("","Inspetor",'1995-12-17',"M");
insert into tb_funcionario (nome_funcionario,cargo_funcionario,data_nasc_funcionario,sexo_funcionario) values ("Gedasio","Inspetor",'1995-12-17',"M");


/* adicionando fk de diretor na tabela filme

alter table tb_filme add id_diretor smallint;
/* adicionando a chave estrangeira do diretor 

alter table tb_filme
add constraint fk_id_diretor
foreign key (id_diretor)
references tb_diretor (id_diretor);

*/
/*adicionando a chave id do filme na sala
alter table tb_sala 
add  id_filme smallint;

alter table tb_sala
add constraint fk_id_filme
foreign key (id_filme)
references tb_filme (id_filme);
*/

select * from tb_diretor;
select * from tb_ator;

insert into tb_filme (nome_filme,data_lancamento,id_ator,id_diretor) values ("django",'2012-01-17','6','6');
insert into tb_filme (nome_filme,data_lancamento,id_ator,id_diretor) values ("Avatar",'2009-05-13','7','7');
insert into tb_filme (nome_filme,data_lancamento,id_ator,id_diretor) values ("Harry-Potter",'2002-10-11','8','8');
insert into tb_filme (nome_filme,data_lancamento,id_ator,id_diretor) values ("Senhor dos Aneis",'2001-11-01','9','9');
insert into tb_filme (nome_filme,data_lancamento,id_ator,id_diretor) values ("Game of thornes",'2011-04-12','10','10');


select * from tb_filme;

select id_diretor from tb_filme where nome_filme = 'django';

select * from tb_filme
order by nome_filme;

create table if not exists tbl_teste_incremento(
codigo smallint primary key auto_increment,
Nome varchar(20) not null
)Auto_increment = 15 , default charset = "utf8";

select * from tbl_teste_incremento;
insert into tbl_teste_incremento (nome) values ("Camila");
insert into tbl_teste_incremento (nome) values ("Núbia");
insert into tbl_teste_incremento (nome) values ("Diana");

alter table tbl_teste_incremento
add column  Nome varchar(60) not null;

delete from tbl_teste_incremento where codigo = '15';
update tbl_teste_incremento set nome = "Gedasiio" where codigo = 16;
update tb_diretor set data_nasc_diretor ='1963-03-17' where id_diretor = 6;

select nome_filme,data_lancamento from tb_filme where id_diretor = 9;
select id_diretor,id_ator from tb_filme where nome_filme = "senhor dos aneis";

select nome_filme from tb_filme where nome_filme <> "Senhor dos aneis";
