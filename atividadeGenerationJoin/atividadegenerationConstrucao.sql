create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);
insert into tb_categoria (descricao, ativo) values ("Hidraulico",true);
insert into tb_categoria (descricao, ativo) values ("Eletrico",true);
insert into tb_categoria (descricao, ativo) values ("diversos",true);

select * from tb_categoria;

create table tb_produto (
id bigint auto_increment,
nome varchar (255) not null,
marca varchar (255) not null,
preco decimal,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome,marca, preco,categoria_id) values ("lampada","ourolux",15.00,2);
insert into tb_produto (nome,marca, preco,categoria_id) values ("tubo","amanco",50.00,1);
insert into tb_produto (nome,marca, preco,categoria_id) values ("torneira","deca",150.00,1);
insert into tb_produto (nome,marca, preco,categoria_id) values ("cimento","tupi",29.00,3);
insert into tb_produto (nome,marca, preco,categoria_id) values ("cal","tupi",15.00,3);
insert into tb_produto (nome,marca, preco,categoria_id) values ("luminaria","bella",250.00,2);
insert into tb_produto (nome,marca, preco,categoria_id) values ("fita de led","Stella",40.00,2);
insert into tb_produto (nome,marca, preco,categoria_id) values ("ralo","deca",30.00,1);

select * from tb_produto where preco > 50.00;

select *from tb_produto where preco > 3.00 and preco < 60.00;

select * from tb_produto where nome like "C%";

select tb_produto.nome, tb_produto.marca, tb_produto.preco, tb_categoria.descricao 
from tb_produto inner join tb_categoria 
on tb_categoria.id = categoria_id order by tb_categoria.descricao;
