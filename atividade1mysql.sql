create database db_rhempresa;

use db_rhempresa;

create table tb_funcionarios(
id bigint(5) auto_increment,
nome varchar(255) not null,
idade int,
salario bigint not null,
cargo varchar(255) not null,
primary key (id)
);

insert into tb_funcionarios(nome,idade,salario,cargo) values("Eriky",26,5000,"desenvolvedor");
insert into tb_funcionarios(nome,idade,salario,cargo) values("Joao",25,1900,"desenvolvedor");
insert into tb_funcionarios(nome,idade,salario,cargo) values("Maria",24,1800,"desenvolvedor");
insert into tb_funcionarios(nome,idade,salario,cargo) values("Pedro",23,4500,"desenvolvedor");
insert into tb_funcionarios(nome,idade,salario,cargo) values("Otavio",22,3500,"desenvolvedor");

select*From tb_funcionarios where salario <2000;
select*From tb_funcionarios where salario >2000;
select*From tb_funcionarios;