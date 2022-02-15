create database db_escola;

use db_escola2;

create table tb_escola(
	id bigint auto_increment,
    aluno varchar (255) not null,
    ano int,
    nota decimal(9,2),
    primary key (id)
);

insert into tb_escola (aluno, ano, nota) values ("Joaquim",1,3);
insert into tb_escola (aluno, ano, nota) values ("Isabela", 8, 6);
insert into tb_escola (aluno, ano, nota) values ("Julia", 2, 6.5);
insert into tb_escola (aluno, ano, nota) values ("Zequinha", 3, 4);
insert into tb_escola (aluno, ano, nota) values ("Paola", 5, 9.3);
insert into tb_escola (aluno, ano, nota) values ("Juju", 2, 8.5);
insert into tb_escola (aluno, ano, nota) values ("May", 6, 10);
insert into tb_escola (aluno, ano, nota) values ("Ana", 7, 9.8);

select * from tb_escola where nota >= 5;
select * from tb_escola where nota < 5;

update tb_escola2 set nota = 5 where id = 2;