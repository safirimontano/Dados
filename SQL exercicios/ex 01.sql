#Programe o código SQL necessário para gerar a estrutura do banco de dados.

create table aluno(
aluno_id int unique not null auto_increment,
nome varchar (20) not null,
sobrenome varchar (20) not null,
email varchar (30) not null,
endereco_id int not null,
curso_id int not null,
primary key (aluno_id),
constraint fk_aluno_endereco foreign key (endereco_id) references endereco(endereco_id),
constraint fk_aluno_cursos foreign key (curso_id) references curso (curso_id)
);

create table cursos(
curso_id int unique not null auto_increment,
nome varchar (20) not null,
carga int not null, 
valor double not null,
instrutor_id int,
tipo_id not null,
primary key (curso_id),
constraint fk_cursos_instrutor foreign key (instrutor_id) references instrutor(instrutor_id),
constraint fk_cursos_tipo foreign key (tipo_id) references tipo(tipo_id)
);

create table tipo(
tipo_id int unique not null auto_increment,
tipo varchar (20) not null,
primary key (tipo_id)
);
 
create table cursos(
curso_id int unique not null auto_increment,
nome varchar (20) not null,
carga varchar (20) not null,
valor DOUBLE not null,
tipo_id int not null,
instrutor_id int not null,
primary key (curso_id)
);

create table instrutor(
instrutor_id int unique not null auto_increment,
nome varchar (20) not null,
telefone varchar (20) not null,
primary key (instrutor_id)
);

#Inclua a coluna DATA_NASCIMENTO na tabela ALUNO do tipo string, de tamanho 10 caracteres; 
ALTER TABLE aluno ADD data_nascimento varchar (10);

#Altere a coluna DATA_NASCIMENTO para NASCIMENTO e seu tipo de dado para DATE; 
ALTER TABLE aluno MODIFY data_nascimento DATE; 

#Crie um novo índice na tabela ALUNO, para o campo ALUNO; 
create index nome on aluno (nome);

#Inclua o campo EMAIL na tabela INSTRUTOR, com tamanho de 100 caracteres; 
ALTER TABLE instrutor ADD email varchar (100);

#Remova o campo EMAIL da tabela INSTRUTOR  
ALTER TABLE instrutor DROP COLUMN email;

