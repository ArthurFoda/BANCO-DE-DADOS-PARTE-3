select *
from Alunos inner
join Cidades on Cidades.id = Alunos.cidade_id;

select *
from Alunos left join Cidades
-- left join retorna todos os registros da tabela à esquerda (principal)
 on Cidades.id = Alunos.cidade_id
 order by Alunos.nome;
 
 -- select com ALIASES
  select
 A.id as "RA",
 A.nome as "Nome",
 A.data_nasc as "Data de Nascimento"
 from
 Alunos A left join
 Cidades C
	on A.cidade_id = C.id
where
	C.nome like 'Sor%' and
    A.data_nasc > 10000
    order by
		A.nome;