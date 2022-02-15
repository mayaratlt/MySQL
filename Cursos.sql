create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categorias(
id bigint auto_increment,
categoria varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categorias (categoria,ativo) values ("Idiomas",true);
insert into tb_categorias (categoria,ativo) values ("Tecnologia",true);
insert into tb_categorias (categoria,ativo) values ("Artesanato",true);


create table tb_curso(
id bigint auto_increment,
nome varchar (255) not null,
tempo date not null,
preco decimal (8,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_curso (nome,tempo,preco,categoria_id)
values ("HTML","05-03-23",545.00,2);
insert into tb_curso (nome,tempo,preco,categoria_id)
values ("Pintura","02-02-22",3.00,3);
insert into tb_curso (nome,tempo,preco,categoria_id)
values ("CSS3","08-05-23",685.00,2);
insert into tb_curso (nome,tempo,preco,categoria_id)
values ("MySQL","06-04-26",845.00,2);
insert into tb_curso (nome,tempo,preco,categoria_id)
values ("Inglês","06-08-2025",2.000,1);
insert into tb_curso (nome,tempo,preco,categoria_id)
values ("MDF","8-03-26",2.00,3);
insert into tb_curso (nome,tempo,preco,categoria_id)
values ("Espanhol","04-02-24",2500.00,1);

select * from tb_curso where preco > 50;

select * from tb_curso where preco between 3 and 60;

select * from tb_curso where nome Like "j%";

select * from 
tb_curso inner join tb_categorias
on tb_curso.categoria_id = tb_categorias.id;

select * from tb_curso where categoria_id Like 2;