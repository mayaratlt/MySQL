select * from tb_produtos;

-- seleção usando %
select nome, quantidade from tb_produtos where nome like "A%" or nome like "%m";

-- contar registros 
select count(dtvalidade) from tb_produtos;

-- somar valores de uma coluna
select sum(preco) as valorTotal from tb_produtos;

-- alterar nomes dos atributos
select nome as produto, preco as valor from tb_produtos;
-- media de valores

select avg (preco) from tb_produtos;

-- valor minimo
select min(preco) from tb_produtos;

-- valor maximo
select max(preco) from tb_produtos;

-- relacionamentos entre tabelas
select tb_produtos.id, nome, quantidade, preco, descricao from
tb_produtos left join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id;

select tb_produtos.id, nome, quantidade, preco, descricao from
tb_produtos right join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id;

select * from
tb_produtos inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id order by tb_produtos.id asc;

select * from
tb_produtos inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id order by tb_produtos.id desc;
