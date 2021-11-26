create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
produto varchar(255)not null,
preco decimal,
peso decimal, 
marca varchar(255) not null,
tipo varchar(255) not null, 
primary key (id)
);

insert into tb_produtos(produto,preco,peso,marca,tipo) values("Lampada",10.00,0.250,"Philips","Eletrico");
insert into tb_produtos(produto,preco,peso,marca,tipo) values("Fio",15.00,0.100,"Philips","Eletrico");
insert into tb_produtos(produto,preco,peso,marca,tipo) values("Luminaria",250.00,0.250,"Bella Iluminação","Eletrico");
insert into tb_produtos(produto,preco,peso,marca,tipo) values("Pendente",150.00,0.950,"Madri","Eletrico");
insert into tb_produtos(produto,preco,peso,marca,tipo) values("Tubo",12.00,0.110,"Amanco","Hidraulico");
insert into tb_produtos(produto,preco,peso,marca,tipo) values("Disco de Serra",15.00,0.170,"Bosh","Diversos");
insert into tb_produtos(produto,preco,peso,marca,tipo) values("Disco de Corte",20.00,0.150,"Starrett","Diversos");
insert into tb_produtos(produto,preco,peso,marca,tipo) values("Cotovelo",5.00,0.90,"Dewalt","diversos");

select*From tb_produtos where preco >500;
select*From tb_produtos where preco <500;
select*From tb_produtos;