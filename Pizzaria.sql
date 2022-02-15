-- drop database db_pizzaria;

create database db_pizzaria;

use db_pizzaria;

create table tb_categoria (
id bigint auto_increment,
alimento varchar(255) not null,
primary key (id)
);

insert into tb_categoria (alimento) values ("Com carne");
insert into tb_categoria (alimento) values ("Vegetariano");
insert into tb_categoria (alimento) values ("Vegano");

create table tb_pizza(
id bigint auto_increment,
numero bigint not null,
sabor varchar(255),
bordaRecheada boolean,
preco decimal (8,2),
categoria_id bigint,
primary key (id), 
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza (numero, sabor, bordaRecheada, preco, categoria_id)
values (1, "Frango Catupiry", True, 29.99, 1);
insert into tb_pizza (numero, sabor, bordaRecheada, preco, categoria_id)
values (2, "Bauru", true, 19.75, 1);
insert into tb_pizza (numero, sabor, bordaRecheada, preco, categoria_id)
values (3, "Calabresa", false, 32.99, 1);
insert into tb_pizza (numero, sabor, bordaRecheada, preco, categoria_id)
values (4, "Mussarela", false,35.00, 2);
insert into tb_pizza (numero, sabor, bordaRecheada, preco, categoria_id)
values (5, "Doritos", true, 46.00, 2);
insert into tb_pizza (numero, sabor, bordaRecheada, preco, categoria_id)
values (6, "Picanha", false, 82.00, 1);
insert into tb_pizza (numero, sabor, bordaRecheada, preco, categoria_id)
values (6, "Escarola", false, 32.00, 3);

select * from tb_pizza;

select * from tb_pizza where preco > 45.00;
select * from tb_pizza where preco > 60 AND preco < 90;
select * from tb_pizza where sabor like "C%";

select * from
 tb_pizza inner join tb_categoria 
 on tb_pizza.categoria_id = tb_categoria.id;
 
select * from tb_pizza where categoria_id = 1;




