create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);
insert into tb_categoria (descricao, ativo) values ("frasco",true);
insert into tb_categoria (descricao, ativo) values ("cartela",true);

select * from tb_categoria;

create table tb_produto (
id bigint auto_increment,
nome varchar (255) not null,
idicacaoUso varchar (255) not null,
preco decimal,
dosagem varchar (255) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome,idicacaoUso, preco,dosagem,categoria_id) values ("Dorflex","dores em geral",12.00,"10ml",2);
insert into tb_produto (nome,idicacaoUso, preco,dosagem,categoria_id) values ("Buscopan","dores abdominais",51.00,"10ml",2);
insert into tb_produto (nome,idicacaoUso, preco,dosagem,categoria_id) values ("Merthiolate","Anti septico",64.00,"100ml",1);
insert into tb_produto (nome,idicacaoUso, preco,dosagem,categoria_id) values ("Epocler","Azia e ma Digestao",30.00,"10ml",1);
insert into tb_produto (nome,idicacaoUso, preco,dosagem,categoria_id) values ("Fresh Tears","lubrificante ocular",60.00,"15ml",1);
insert into tb_produto (nome,idicacaoUso, preco,dosagem,categoria_id) values ("Nimesulida","anti inflamatorio",12.00,"10mg",2);
insert into tb_produto (nome,idicacaoUso, preco,dosagem,categoria_id) values ("Elani ciclo","anti consepcional",55.00,"30mg",2);
insert into tb_produto (nome,idicacaoUso, preco,dosagem,categoria_id) values ("Naldecon","gripes e resfriados",40.00,"20mg",2);

select * from tb_produto where preco > 50.00;

select *from tb_produto where preco > 3.00 and preco < 60.00;

select * from tb_produto where nome like "B%";

select tb_produto.nome, tb_produto.idicacaoUso, tb_produto.preco, tb_categoria.descricao 
from tb_produto inner join tb_categoria 
on tb_categoria.id = categoria_id order by tb_categoria.descricao;



