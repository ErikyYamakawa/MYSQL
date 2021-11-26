create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_classe (descricao, ativo) values ("Ataque",true);
insert into tb_classe (descricao, ativo) values ("Defesa",true);
insert into tb_classe (descricao, ativo) values ("Suporte",true);

select * from tb_classe;
 
 create table tb_personagem (
id bigint auto_increment,
nome varchar (255) not null,
tipo varchar (255) not null,
qtAtaque bigint not null,
qtDefesa bigint not null,
velocidade bigint,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome, tipo, qtAtaque, qtDefesa,velocidade, classe_id) values ("Ganymed","fada",1900,1200,113,3);
insert into tb_personagem (nome, tipo, qtAtaque, qtDefesa,velocidade, classe_id) values ("Artamiel","arcanjo",1500,1700,100,2);
insert into tb_personagem (nome, tipo, qtAtaque, qtDefesa,velocidade, classe_id) values ("Laika","Guerreiro",3000,500,100,1);
insert into tb_personagem (nome, tipo, qtAtaque, qtDefesa,velocidade, classe_id) values ("Verad","Dragao",1800,1500,93,2);
insert into tb_personagem (nome, tipo, qtAtaque, qtDefesa,velocidade, classe_id) values ("Leona","guerreira",5000,1900,102,2);
insert into tb_personagem (nome, tipo, qtAtaque, qtDefesa,velocidade, classe_id) values ("Cheongpung","Humano",3350,1100,102,1);
insert into tb_personagem (nome, tipo, qtAtaque, qtDefesa,velocidade, classe_id) values ("Ongyouki","Demonio",4500,600,115,1);
insert into tb_personagem (nome, tipo, qtAtaque, qtDefesa,velocidade, classe_id) values ("Qitian Dasheng","Macaco",1000,900,114,3);

select * from tb_personagem where qtAtaque > 2000;

select * from tb_personagem where qtDefesa > 1000 and qtDefesa < 2000;

select * from tb_personagem where nome like "C%";

select tb_personagem.nome, tb_personagem.qtAtaque, tb_personagem.qtDefesa, tb_classe.descricao 
from tb_personagem inner join tb_classe 
on tb_classe.id = classe_id order by tb_classe.descricao;
