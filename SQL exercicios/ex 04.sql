# Exiba a quantidade de cursos que já foram vendidos pela Softblue;
SELECT count(nome) FROM cursos;

#Exiba o valor total já arrecadado pelos cursos vendidos pela Softblue; 
SELECT ROUND(SUM(cursos.valor),2) AS total_arrecadado
FROM aluno
INNER JOIN cursos ON aluno.curso_id = cursos.curso_id;

#Exiba o valor do curso mais caro da Softblue; 
SELECT MAX(valor) AS Curso_mais_caro
FROM cursos;

#Exiba o valor do curso mais barato da Softblue;
SELECT MIN(valor) AS Curso_mais_barato
FROM cursos;

 #Exiba os nomes dos instrutores da Softblue e a quantidade de cursos que cada um tem sob sua responsabilidade; 
SELECT instrutor.nome, count(cursos.nome) 
FROM instrutor
INNER JOIN cursos ON cursos.instrutor_id = instrutor.instrutor_id
GROUP BY instrutor.nome;
 
# Exiba apenas os e-mails que tem dominio gmail
SELECT nome, email
FROM aluno
WHERE email LIKE '%@gmail.com';

#Exiba os nomes dos cursos de Java da Softblue;
SELECT nome
FROM cursos
WHERE nome LIKE 'java%';

# Utilizando subquery e o parâmetro IN, exiba os nomes dos cursos disponibilizados pela Softblue cujo tipo de curso seja 'Programação'; 
SELECT cursos.nome, tipo.tipo
FROM cursos
INNER JOIN tipo ON cursos.tipo_id = tipo.tipo_id
WHERE tipo.tipo_id IN (SELECT tipo_id FROM tipo WHERE tipo_id=2);

# usando join
SELECT cursos.nome, tipo.tipo
FROM cursos 
INNER JOIN tipo ON tipo.tipo_id = cursos.tipo_id
WHERE tipo.tipo = 'Programação';

# Utilizando subquery e o parâmetro EXISTS, exiba novamente os nomes dos cursos disponibilizados pela Softblue cujo tipo de curso seja 'Programação'; 
SELECT cursos.nome, tipo.tipo
FROM cursos
INNER JOIN tipo ON cursos.tipo_id = tipo.tipo_id
WHERE EXISTS (SELECT tipo_id FROM tipo WHERE tipo_id=2 and cursos.tipo_id = tipo.tipo_id);

