create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);
insert into tb_categoria (descricao, ativo) values ("duzia",true);
insert into tb_categoria (descricao, ativo) values ("unidade",true);

select * from tb_categoria;

create table tb_produto (
id bigint auto_increment,
nome varchar (255) not null,
tipo varchar (255) not null,
preco decimal,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome,tipo, preco,categoria_id) values ("maça","fruta",15.00,1);
insert into tb_produto (nome,tipo, preco,categoria_id) values ("caqui","fruta",5.00,2);
insert into tb_produto (nome,tipo, preco,categoria_id) values ("cambuci","fruta",59.00,1);
insert into tb_produto (nome,tipo, preco,categoria_id) values ("cereja","fruta",50.00,1);
insert into tb_produto (nome,tipo, preco,categoria_id) values ("melao","fruta",30.00,2);
insert into tb_produto (nome,tipo, preco,categoria_id) values ("melancia","fruta",80.00,2);
insert into tb_produto (nome,tipo, preco,categoria_id) values ("banana","fruta",15.00,1);
insert into tb_produto (nome,tipo, preco,categoria_id) values ("laranja","fruta",15.00,1);
insert into tb_produto (nome,tipo, preco,categoria_id) values ("mamao","fruta",15.00,1);


select * from tb_produto where preco > 50.00;

select *from tb_produto where preco > 3.00 and preco < 60.00;

select * from tb_produto where nome like "b%";

select tb_produto.nome, tb_produto.tipo, tb_produto.preco, tb_categoria.descricao 
from tb_produto inner join tb_categoria 
on tb_categoria.id = categoria_id order by tb_categoria.descricao;
