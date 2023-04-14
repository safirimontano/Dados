SELECT cursos.nome, tipo.tipo
FROM cursos
INNER JOIN tipo 
ON cursos.tipo_id = tipo.tipo_id;

SELECT cursos.nome, tipo.tipo, instrutor.nome, instrutor.telefone
FROM cursos
JOIN tipo ON cursos.tipo_id = tipo.tipo_id
JOIN instrutor ON cursos.instrutor_id = instrutor.instrutor_id;

create view nome_valor as 
select nome, valor
from cursos
where tipo_id = 2;

select * from nome_valor;

create view visualizacao as
SELECT cursos.nome AS nome_curso, tipo.tipo, instrutor.nome AS nome_instrutor
FROM cursos
JOIN tipo ON cursos.tipo_id = tipo.tipo_id
JOIN instrutor ON cursos.instrutor_id = instrutor.instrutor_id;

select * from visualizacao;




