create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);
insert into tb_categoria (descricao, ativo) values ("Idioma",true);
insert into tb_categoria (descricao, ativo) values ("Matematica",true);
insert into tb_categoria (descricao, ativo) values ("especificação",true);

select * from tb_categoria;

create table tb_curso (
id bigint auto_increment,
curso varchar (255) not null,
horas decimal,
preco decimal,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_curso (curso,horas, preco,categoria_id) values ("Japoneis","50.00",500.00,1);
insert into tb_curso (curso,horas, preco,categoria_id) values ("Kumon","100.00",50.00,2);
insert into tb_curso (curso,horas, preco,categoria_id) values ("Programação OO","50.00",60.00,3);
insert into tb_curso (curso,horas, preco,categoria_id) values ("Ingles","100.00",50.00,1);
insert into tb_curso (curso,horas, preco,categoria_id) values ("italiano","45.00",1000.00,1);
insert into tb_curso (curso,horas, preco,categoria_id) values ("Alemao","65.00",200.00,1);
insert into tb_curso (curso,horas, preco,categoria_id) values ("Frances","75.00",5.00,1);
insert into tb_curso (curso,horas, preco,categoria_id) values ("Mandarin","85.00",25.00,1);

select * from tb_curso where preco > 50.00;

select *from tb_curso where preco > 3.00 and preco < 60.00;

select * from tb_curso where curso like "J%";

select tb_curso.curso, tb_curso.horas, tb_curso.preco, tb_categoria.descricao 
from tb_curso inner join tb_categoria 
on tb_categoria.id = categoria_id order by tb_categoria.descricao;
