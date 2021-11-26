create database db_escola;

use db_escola;

create table tb_aluno(
id bigint auto_increment,
nome varchar(255)not null,
serie varchar(255) not null,
disciplina varchar(255) not null, 
nota varchar(255) not null,
idade int, 
primary key (id)
);

insert into tb_aluno(nome,serie,disciplina,nota,idade) values("Eriky",7,"matematica",10,15);
insert into tb_aluno(nome,serie,disciplina,nota,idade) values("Geisian",6,"portugues",7,14);
insert into tb_aluno(nome,serie,disciplina,nota,idade) values("Rafalel",5,"Historia",6,13);
insert into tb_aluno(nome,serie,disciplina,nota,idade) values("Lucas",4,"Filosofia",8,12);
insert into tb_aluno(nome,serie,disciplina,nota,idade) values("Vinicius",3,"Geografia",9,11);

select*From tb_aluno where nota>7;
select*From tb_aluno where nota<7;
select*From tb_aluno;

