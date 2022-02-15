create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categorias(tipo,ativo) values("Construção",true);
insert into tb_categorias(tipo,ativo) values("Acabamento",true);
insert into tb_categorias(tipo,ativo) values("Jardim",true);
insert into tb_categorias(tipo,ativo) values("Hidraulica",false);


create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (6,2) not null,
quantidade bigint not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias (id)
);

insert into tb_produto(nome,preco,quantidade,categoria_id)
values ("Cimento",00.45,500,1);
insert into tb_produto(nome,preco,quantidade,categoria_id)
values ("Areia",7.00,1000,1);
insert into tb_produto(nome,preco,quantidade,categoria_id)
values ("Ceramica",57.00,200,2);
insert into tb_produto(nome,preco,quantidade,categoria_id)
values ("Rejunte",10.00,110,2);
insert into tb_produto(nome,preco,quantidade,categoria_id)
values ("Cilindro",180.00,47,4);
insert into tb_produto(nome,preco,quantidade,categoria_id)
values ("Regador",3.00,68,3);
insert into tb_produto(nome,preco,quantidade,categoria_id)
values ("Mangueira",75.00,21,3);

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome Like "c%";

select * from
tb_produto inner join tb_categorias
on tb_produto.categoria_id = tb_categorias.id;

select * from tb_produto where categoria_id Like 1;
