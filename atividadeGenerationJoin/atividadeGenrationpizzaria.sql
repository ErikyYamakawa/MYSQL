create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);
insert into tb_categoria (descricao, ativo) values ("Salgado",true);
insert into tb_categoria (descricao, ativo) values ("Doce",true);


select * from tb_categoria;

 create table tb_pizza (
id bigint auto_increment,
nome varchar (255) not null,
principalIngrediente varchar (255) not null,
preco decimal,
tamanho varchar (255) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (nome,principalIngrediente, preco, tamanho,categoria_id) values ("Moda do Cheff","Pimentao",50.00,"grande",1);
insert into tb_pizza (nome,principalIngrediente, preco, tamanho,categoria_id) values ("Caipira","Frango e Milho",37.00,"grande",1);
insert into tb_pizza (nome,principalIngrediente, preco, tamanho,categoria_id) values ("Capela","palmito e lombo",40.00,"grande",1);
insert into tb_pizza (nome,principalIngrediente, preco, tamanho,categoria_id) values ("Moranguete","morango e chocolate",28.00,"medio",2);
insert into tb_pizza (nome,principalIngrediente, preco, tamanho,categoria_id) values ("Kit-kat","kit-kat",15.00,"pequeno",2);
insert into tb_pizza (nome,principalIngrediente, preco, tamanho,categoria_id) values ("Brocolis","brocolis e bacon",32.00,"grande",1);
insert into tb_pizza (nome,principalIngrediente, preco, tamanho,categoria_id) values ("Calabresa","Calabresa",30.00,"grande",1);
insert into tb_pizza (nome,principalIngrediente, preco, tamanho,categoria_id) values ("Rucula","Rucula e tomate seco",45.00,"grande",1);

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where preco > 29 and preco < 60.00;

select * from tb_pizza where nome like "C%";

select tb_pizza.nome, tb_pizza.principalIgrediente, tb_pizza.preco, tb_categoria.descricao 
from tb_pizza inner join tb_categoria 
on tb_categoria.id = categoria_id order by tb_categoria.descricao;