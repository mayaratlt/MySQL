create database db_ecommerce;

use db_ecommerce;

create table tb_ecommerce (
 id bigint auto_increment,
 nome varchar (255) not null,
 preco decimal(8,2),
 quantidade bigint,
 primary key (id)
 
 );
 
 insert into tb_ecommerce (nome, preco, quantidade) values ("Perfume Egeo", 120.00, 55);
 insert into tb_ecommerce (nome, preco, quantidade) values ("Coffee Woman", 145.00, 42);
 insert into tb_ecommerce (nome, preco, quantidade) values ("Creme Ameixa", 65.90, 25);
 insert into tb_ecommerce (nome, preco, quantidade) values ("Esfoliante corporal", 85.90, 155);
 insert into tb_ecommerce (nome, preco, quantidade) values ("Shampoo Ameixa", 42.00, 75);
 
 select * from tb_ecommerce where preco > 60;
 select * from tb_ecommerce where preco < 60;