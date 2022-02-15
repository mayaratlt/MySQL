drop database db_cidade_das_carnes;

create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
ativo boolean,
primary key (id)
);

insert into tb_categoria(tipo,ativo) values ("Suino",true);
insert into tb_categoria(tipo,ativo) values ("Bovino",false);
insert into tb_categoria(tipo,ativo) values ("Aves",true);
insert into tb_categoria(tipo,ativo) values ("Soja",false);
insert into tb_categoria(tipo,ativo) values ("Enlatados",true);

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(8,2) not null,
dtValidade date,
quaProduto_id bigint,
primary key (id),
foreign key (quaProduto_id) references tb_categoria(id)
);

insert into tb_produtos (nome,preco,dtValidade,quaProduto_id) values ("Coxa de frango",23.90,"2022-02-03",3);
insert into tb_produtos (nome,preco,dtValidade,quaProduto_id) values ("Picanha",97.90,"2022-06-02",2);
insert into tb_produtos (nome,preco,dtValidade,quaProduto_id) values ("Asa",17.98,"2022-03-03",3);
insert into tb_produtos (nome,preco,dtValidade,quaProduto_id) values ("Carne de soja",38.95,"2022-01-05",4);
insert into tb_produtos (nome,preco,dtValidade,quaProduto_id) values ("Bacon",47.90,"2022-08-04",1);
insert into tb_produtos (nome,preco,dtValidade,quaProduto_id) values ("Coxão mole",35.75,"2022-08-07",2);
insert into tb_produtos (nome,preco,dtValidade,quaProduto_id) values ("Salsicha",3.00,"2022-08-02",2);

select * from tb_produtos;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco > 3 AND preco < 60;

select * from tb_produtos where nome like "c%";

select * from 
tb_produtos inner join tb_categoria
on tb_produtos.quaProduto_id = tb_categoria.id;

select * from tb_produtos where quaProduto_id like 1;


