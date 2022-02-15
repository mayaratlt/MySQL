create database db_rh;

use db_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar (255) not null,
idade int,
funcao varchar (255) not null,
salario int,
primary key (id)

);

insert into tb_funcionarios (nome, idade, funcao, salario)
values ("Paloma", 35, "Cordenadora", 2.000);
insert into tb_funcionarios (nome, idade, funcao, salario)
values ("Robert", 27, "Diretor", 3.200);
insert into tb_funcionarios (nome, idade, funcao, salario)
values ("Maria", 32, "Desenvolvedora Front", 5.300);
insert into tb_funcionarios (nome, idade, funcao, salario)
values ("Maitê", 25, "Desenvolvedora Full Stack", 8.450);

select * from tb_funcionarios;

select id, nome, salario,  tb_funcionarios where salario < 3000;
select id, nome, salario,  tb_funcionarios where salario >= 4000;

update tb_funcionarios set funcao = "Desenvolvedor Sênior", salario = 11.000 where id = 10;

