
INSERT into tipo (tipo) values ('banco de dados'),('programação'),('modelagem de dados');

insert into instrutor (nome, telefone) values ('André Milani', '1111-1111'),('Carlos Tosin', '1212-1212');

insert into cursos (nome, carga, valor, tipo_id,instrutor_id) values ('Java Fundamentos', 60, 689.87,2,2), ('SQL completo', 20, 689.87,1,2),('Java avançado', 60, 289.89,1,2), ('PHP básico', 50, 322.50,1,1);

insert into aluno (nome, sobrenome, email,curso_id, data_nascimento) values ('José', 'Moraes', 'jose@softblue.com.br',3, '1997-10-25'),
('Emílio', 'Rodrigues', 'emilio@softblue.com.br',2, '1987-11-25'),
('Cristian', 'Marques', 'CrisMarques@softblue.com.br',4, '1998-10-29'),
('Regina', 'Joyce', 'regininha@softblue.com.br',1, '1988-07-15'),
('Fernando', 'Ursuly', 'Fefeury@softblue.com.br',4, '1999-04-10');

select nome from cursos;

select nome, valor 
from cursos
where valor > 300;

select nome, valor 
from cursos
where valor > 300 and valor < 600;

UPDATE aluno SET email = 'cristinin@gmail.com' WHERE aluno_id = 3;

UPDATE cursos SET valor = valor * 0.1 
where valor < 300;

UPDATE cursos SET nome = 'PHP fundamentos' where curso_id = 4;