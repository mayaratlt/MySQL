drop database db_farmacia;

create database db_farmacia;

use db_farmacia;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255),
alimento varchar(255),
primary key (id)
);

insert into tb_categoria (tipo,alimento) values("Medicamento","M");
insert into tb_categoria (tipo,alimento) values("Higiene","H");
insert into tb_categoria (tipo,alimento) values("Alimento","A");


create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (8,2) not null,
dtValidade date,
tipo_id bigint,
primary key (id),
foreign key (tipo_id) references tb_categoria(id)
);

insert into tb_produto(nome,preco,dtValidade,tipo_id)
values ("Shampoo",17.00,"2022-05-01",2);
insert into tb_produto(nome,preco,dtValidade,tipo_id)
values ("Leite Ninho", 27.90,"2022-02-03",3);
insert into tb_produto(nome,preco,dtValidade,tipo_id)
values ("Dipirona",5.00,"2024-02-03",1);
insert into tb_produto(nome,preco,dtValidade,tipo_id)
values ("Dorflex",16.00,"2024-03-02",1);
insert into tb_produto(nome,preco,dtValidade,tipo_id)
values ("Tinta",32.90,"2025-02-04",2);
insert into tb_produto(nome,preco,dtValidade,tipo_id)
values ("Barra de cereal",1.99,"2024-03-01",3);

select * from tb_produto;

select * from tb_produto where preco > 30;

select * from tb_produto where preco > 20 AND preco < 40;

select * from tb_produto where nome like "d%";

select * from 
tb_produto inner join tb_categoria
on tb_produto.tipo_id = tb_categoria.id;

select * from tb_produto where tipo_id like 3;





